#include <CoreFoundation/CoreFoundation.h>
#include <CoreServices/CoreServices.h>
#include <QuickLook/QuickLook.h>

#import <Cocoa/Cocoa.h>

OSStatus GenerateThumbnailForURL(void *thisInterface, QLThumbnailRequestRef thumbnail, CFURLRef url, CFStringRef contentTypeUTI, CFDictionaryRef options, CGSize maxSize);
void CancelThumbnailGeneration(void *thisInterface, QLThumbnailRequestRef thumbnail);


/* -----------------------------------------------------------------------------
 Generate a thumbnail for file
 
 This function's job is to create thumbnail for designated file as fast as possible
 ----------------------------------------------------------------------------- */

OSStatus GenerateThumbnailForURL(void *thisInterface, QLThumbnailRequestRef thumbnail, CFURLRef url, CFStringRef contentTypeUTI, CFDictionaryRef options, CGSize maxSize)
{
    NSStringEncoding usedEncoding = 0;
    NSError *readError = nil;
    
    NSString *source = [NSString stringWithContentsOfURL:(__bridge NSURL*)url usedEncoding:&usedEncoding error:&readError];
    
    if (usedEncoding == 0) {
        NSLog(@"Failed to determine encoding for file %@", [(__bridge NSURL*)url path]);
        return noErr;
    }
    
    source = [NSString stringWithCString:source.UTF8String encoding:NSUTF8StringEncoding];
    
    
    
    NSRect renderRect = NSMakeRect(0.0, 0.0, maxSize.width, maxSize.height);
    renderRect = NSInsetRect(renderRect, 50.0, 50.0);
   
    
    CGContextRef context = QLThumbnailRequestCreateContext(thumbnail, maxSize, false, NULL);
    if (context) {
        NSGraphicsContext* graphicsContext = [NSGraphicsContext graphicsContextWithGraphicsPort:(void *)context flipped:NO];
        
        [NSGraphicsContext setCurrentContext:graphicsContext];
      
        
        NSDictionary *textAttributes =
        @{
          NSForegroundColorAttributeName: [NSColor blackColor],
          NSFontAttributeName: [NSFont fontWithName:@"Menlo" size:12]
          };
        [source drawInRect:renderRect withAttributes:textAttributes];
        
        
        QLThumbnailRequestFlushContext(thumbnail, context);
        CFRelease(context);
    }
    
    return noErr;
}


void CancelThumbnailGeneration(void *thisInterface, QLThumbnailRequestRef thumbnail)
{
    // Implement only if supported
}
