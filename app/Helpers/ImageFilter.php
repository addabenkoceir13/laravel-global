<?php

namespace App\Helpers\ImageFilter;
use Intervention\Image\Filters\FilterInterface;

class ImageFilter implements FilterInterface
{
    private $blur;

    public function applyFilter(\Intervention\Image\Image $image)
    {
        $image->fit(400,400)->blur(15)
        ->greyscale();

        return $image;
    }
}
