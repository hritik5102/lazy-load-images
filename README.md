## Unsplash implements lazy loading of images too

If you open unsplash, and if you enable throttling to fast 4g, and slow 4g and if you scroll the unsplash screen fast, the low resolution images (blur) images will be shown first and in the background the high resolution image will be downloaded and shown. This is insipiration to create a similar effect by loading the images lazily, this is image optimization technique.

## Lazy loading attribute

- https://caniuse.com/loading-lazy-attr
- https://web.dev/articles/browser-level-image-lazy-loading


## React Lazy loading library

- https://www.npmjs.com/package/react-lazy-load-image-component

## Unsplash uses this two to create a blur image

- https://blurha.sh/
- https://github.com/woltapp/blurhash
- https://github.com/mad-gooze/fast-blurhash?tab=readme-ov-file

## Load high resolution images

If you open devtools in the browser and go to network tab and then click "image" tab, you will see in total 16 requests is getting fired.

Enable throttling -> fast 4g, and slow 4g to see the impact.

## Compress image and convert from JPG to WebP using ffmpeg

WebP is a modern image format developed by Google that offers several advantages over traditional formats like JPEG and PNG. Here are the key benefits of using WebP images.

WebP provides better compression efficiency compared to JPEG and PNG, resulting in smaller file sizes without sacrificing quality.

Lossy Compression: WebP lossy images are typically 25-34% smaller than equivalent JPEG images at the same quality level.

Lossless Compression: WebP lossless images are 26% smaller than PNG images on average.

Smaller image sizes mean faster loading times for web pages, which improves user experience and SEO rankings. WebP is particularly beneficial for mobile users with limited bandwidth.

- https://caniuse.com/webp

For eg:

images/high-resolutions-images/image-1.jpg is of size 5.3M, after conversation image size reduced to 979k, almost 81% of the reduction.

If you open devtools -> go to network tab -> select img, earlier the total download size of 24 images was nearly ~74MB but after reduction it reduced down 10.8MB

## Srcset

With srcset attribute, you can save bandwidth by getting different image based on the device pixel ratio (DPR) and resolution, so that you can ensure that people are getting the high resolution images when they need.

You wouldn't want to force a low-end device to download a very high resolution image, only to downscale it locally. You also don't want high-end devices to upscale low resolution images for a blurry user experience.

You can load images based on the device pixel density on which the end user are in, so if the user are using high pixel density device it's gonna give them a nice high res image if they're on a just regular computer screen with 72 DPI they don't need to load
the bug heavy images, they can get the lower quality one which one would perfectly fine for them.

Another way, you can load the images based on the width of the viewport they are in, you can different version of the same image and load them based on the viewport which would be bigger in case of desktop, then tablet or mobile.

The image doesn't know what it would be it's size before it's load, so image first has to load in then it knows how big it is. So with "srcset" where we provided a multiple source, we want it load the right image based on the circumstances it's in which is based on the resolution and DPR. So with srcset, it won't load all the images, it will only load the image which matches the circumstances.

## Note:
1. If you already know the image dimensions before loading it, then you should add the width and height attributes to your img. This avoids the annoying effect of seeing the content moving around during image loading.
2. Imgbot - Automatic image compression tool which is available inside github, once you push the changes, it will reduce down your images to some percentage.
