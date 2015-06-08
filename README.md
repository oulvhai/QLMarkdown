# QLMarkdown

[![Github Releases](https://img.shields.io/github/downloads/oulvhai/QLMarkdown/latest/total.svg?style=flat-square)](https://github.com/oulvhai/QLMarkdown/releases)
[![GitHub release](https://img.shields.io/github/release/oulvhai/QLMarkdown.svg?style=flat-square)](https://github.com/oulvhai/QLMarkdown/releases)
![License](https://img.shields.io/github/license/oulvhai/QLMarkdown.svg?style=flat-square)
![Love](https://img.shields.io/badge/build%20with-%3C3-ff69b4.svg?style=flat-square)

[![Git](https://img.shields.io/badge/GitHub-oulvhai-blue.svg?style=flat-square)](https://github.com/oulvhai)
[![Twitter](https://img.shields.io/badge/twitter-@oulvhai-blue.svg?style=flat-square)](http://twitter.com/oulvhai)
[![eMail](https://img.shields.io/badge/email-oulvhai@gmail.com-blue.svg?style=flat-square)](mailto:oulvhai@gmail.com?SUBJECT=About QLMarkdown)

A Quick Look plugin for Markdown files. Inspired by [QLSwift](https://github.com/lexrus/QLSwift).



## Downloads

Source code is available at <http://github.com/oulvhai/QLMarkdown>.

You can download the [latest](https://github.com/oulvhai/QLMarkdown/releases/tag/0.1.0) release from 
<https://github.com/oulvhai/QLMarkdown/releases>

## Installation

Simply copy QLMarkdown.qlgenerator to `~/Library/QuickLook` or `/Library/QuickLook`.

If the newly installed plugin is not picked up instantly, you run `qlmanage -r` in a terminal to refresh.

To uninstall, drag QLMarkdown into the trash.

**Note:** *Quick Look doesn't allow selecting text. If you want to select the text in the markdown preview, you will 
need to enable text selection in Quick Look by running the following in Terminal:*

````bash
defaults write com.apple.finder QLEnableTextSelection -bool TRUE; killall Finder
````

## License

This code is distributed under the terms and conditions of the MIT license.

```
The MIT License (MIT)
Copyright © 2015 Lex Tang, http://LexTang.com

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the “Software”), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

```

---

The syntax of Markdown is rendered with [Ace (Ajax.org Cloud9 Editor)](https://github.com/ajaxorg/ace)

```
Copyright (c) 2010, Ajax.org B.V.
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of Ajax.org B.V. nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL AJAX.ORG B.V. BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
```

