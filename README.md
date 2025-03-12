## Step 1 : Load high resolution images

If you open devtools in the browser and go to network tab and then click "image" tab, you will see in total 16 requests is getting fired.

## Step 2: Convert JPG to WEBP using ffmpeg

WebP is a modern image format developed by Google that offers several advantages over traditional formats like JPEG and PNG. Here are the key benefits of using WebP images.

WebP provides better compression efficiency compared to JPEG and PNG, resulting in smaller file sizes without sacrificing quality.

Lossy Compression: WebP lossy images are typically 25-34% smaller than equivalent JPEG images at the same quality level.

Lossless Compression: WebP lossless images are 26% smaller than PNG images on average.

Smaller image sizes mean faster loading times for web pages, which improves user experience and SEO rankings. WebP is particularly beneficial for mobile users with limited bandwidth.

For eg:

images/high-resolutions-images/image-1.jpg is of size 5.3M, after conversation image size reduced to 979k, almost 81% of the reduction.

If you open devtools -> go to network tab -> select img, earlier the total download size of 24 images was nearly ~74MB but after reduction it reduced down 10.8MB


## Note:
If you already know the image dimensions before loading it, then you should add the width and height attributes to you img. This avoids the annoying effect of seeing the content moving around during image loading
