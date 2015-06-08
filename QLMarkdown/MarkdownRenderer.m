//
//  MarkdownRenderer.m
//  QLMarkdown
//
//  Created by Oulvhai on 6/4/15.
//  Copyright (c) 2015 oulvhai. All rights reserved.
//

#import "MarkdownRenderer.h"

NSData *renderMarkdownWithHTML(NSURL* url)
{
    NSStringEncoding usedEncoding = 0;
    NSError *readError = nil;
    
    NSString *source = [NSString stringWithContentsOfURL:url usedEncoding:&usedEncoding error:&readError];
    
    if (usedEncoding == 0) {
        NSLog(@"Failed to determine encoding for file %@", [url path]);
    }
    
    NSBundle *bundle = [NSBundle bundleWithIdentifier:@"com.coderforart.QLMarkdown"];
    NSString *aceContent = [NSString stringWithContentsOfFile:[bundle pathForResource:@"ace" ofType:@"js"]
                                                     encoding:NSUTF8StringEncoding
                                                        error:nil];
    NSString *themeName = @"twilight";
    //themeName = @"chrome";
    NSString *themeFileName = [NSString stringWithFormat:@"theme-%@",themeName];
    NSString *themeContent = [NSString stringWithContentsOfFile:[bundle pathForResource:themeFileName ofType:@"js"]
                                                       encoding:NSUTF8StringEncoding
                                                          error:nil];
    NSString *markdownLangContent = [NSString stringWithContentsOfFile:[bundle pathForResource:@"mode-markdown" ofType:@"js"]
                                                              encoding:NSUTF8StringEncoding
                                                                 error:nil];
    
    NSString *html = [NSString stringWithFormat:@"<!DOCTYPE html><html>"
                      "<head><meta charset=\"UTF-8\"><style type=\"text/css\"> body { overflow: hidden; } #editor { margin: 0; position: absolute;top: 0; bottom: 0; left: 0; right: 0; font-size: 14px;} .ace_content{ margin-top:20px !important;} #editor_val{display: none;}</style>"
                      "<script>%@</script>"
                      "<script>%@</script>"
                      "<script>%@</script>"
                      "</head>"
                      "<body><div id=\"editor\"></div>"
                      "<textarea id=\"editor_val\">%@</textarea>"
                      "<script>"
                      "var editor = ace.edit(\"editor\");"
                      "editor.setReadOnly(true);"
                      "editor.setTheme(\"ace/theme/%@\");"
                      "editor.setShowPrintMargin(false);"
                      "editor.setHighlightActiveLine(true);"
                      "editor.renderer.setPadding(20);"
                      "var session = editor.getSession();"
                      "session.setValue(document.getElementById('editor_val').value);"
                      "session.setMode(\"ace/mode/markdown\");"
                      "session.setUseWrapMode(true);"
                      "</script>"
                      "</body></html>",
                      aceContent,themeContent,markdownLangContent,
                      [NSString stringWithCString:source.UTF8String encoding:NSUTF8StringEncoding],
                      themeName];
    
    return [html dataUsingEncoding:NSUTF8StringEncoding];
}
