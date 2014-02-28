# jQuery File Upload for Rails

[jQuery-File-Plugin][1] is a file upload plugin written by [Sebastian Tschan][2]. jQuery File Upload features multiple file selection, drag&drop support, progress bars and preview images for jQuery. Supports cross-domain, chunked and resumable file uploads and client-side image resizing.

`jquery-fileupload-rails` is a library that integrates jQuery File Upload for Rails 3 and 4 Asset Pipeline.

## Plugin versions

| jQuery Plugin                             | Version    |
|:------------------------------------------|:----------:|
| File Upload User Interface Plugin         | 9.5.2      |
| File Upload Plugin                        | 5.40.1     |
| UI Widget                                 | 1.10.4+amd |
| File Upload AngularJS Plugin              | 2.2.0      |
| File Upload Audio Preview Plugin          | 1.0.3      |
| File Upload Image Preview & Resize Plugin | 1.7.1      |
| File Upload Processing Plugin             | 1.3.0      |
| File Upload Validation Plugin             | 1.1.2      |
| File Upload Video Preview Plugin          | 1.0.3      |

## Installing Gem
```ruby
gem 'jquery-fileupload-rails', github: 'futhr/jquery-fileupload-rails'
```

**NOTE:** _This gem's upstream has not been maintained for long time so its recommended to fork above branch until it been merged._

## Using the javascripts

Require jquery-fileupload in your app/assets/application.js file.

    //= require jquery-fileupload

The snippet above will add the following js files to the mainfest file.

    //=require jquery-fileupload/vendor/jquery.ui.widget
    //=require jquery-fileupload/vendor/load-image
    //=require jquery-fileupload/vendor/canvas-to-blob
    //=require jquery-fileupload/vendor/tmpl
    //=require jquery-fileupload/jquery.iframe-transport
    //=require jquery-fileupload/jquery.fileupload
    //=require jquery-fileupload/jquery.fileupload-process
    //=require jquery-fileupload/jquery.fileupload-image
    //=require jquery-fileupload/jquery.fileupload-audio
    //=require jquery-fileupload/jquery.fileupload-video
    //=require jquery-fileupload/jquery.fileupload-validate
    //=require jquery-fileupload/jquery.fileupload-ui
    //=require jquery-fileupload/locale

If you only need the basic files, just add the code below to your application.js file. [Basic setup guide][3]

    //= require jquery-fileupload/basic

The basic setup only includes the following files:

    //= require jquery-fileupload/vendor/jquery.ui.widget
    //= require jquery-fileupload/jquery.iframe-transport
    //= require jquery-fileupload/jquery.fileupload

## Using the stylesheet

Require the stylesheet file to app/assets/stylesheets/application.css

    *= require jquery.fileupload-ui

Additionally you can add support files:

    *= require jquery.fileupload-ui-noscript
    *= require jquery.fileupload-noscript
    *= require jquery.fileupload

## Using the middleware

The `jquery.iframe-transport` fallback transport has some special caveats regarding the response data type, http status, and character encodings. `jquery-fileupload-rails` includes a middleware that handles these inconsistencies seamlessly. If you decide to use it, create an initializer that adds the middleware to your application's middleware stack.
```ruby
Rails.application.config.middleware.use JQuery::FileUpload::Rails::Middleware
```

You can also check out Ryan Bate's RailsCast [jQuery File Upload episode][4]. You will need a pro account to watch it though.

## Thanks
Thanks to [Sebastian Tschan][2] for writing an awesome file upload plugin.

## License
Copyright (c) 2014 [Tors Dalid][6] and [contributors][5]

> Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

[1]: https://github.com/blueimp/jQuery-File-Upload
[2]: https://github.com/blueimp
[3]: https://github.com/blueimp/jQuery-File-Upload/wiki/Basic-plugin
[4]: http://railscasts.com/episodes/381-jquery-file-upload?view=comments
[5]: https://github.com/tors/jquery-fileupload-rails/graphs/contributors
[6]: https://github.com/tors
