// =================================================================================================
//
//	Starling Framework
//	Copyright 2011 Gamua OG. All Rights Reserved.
//
//	This program is free software. You can redistribute and/or modify it
//	in accordance with the terms of the accompanying license agreement.
//
// =================================================================================================

package starling.textures;
import starling.errors.AbstractClassError;

/** A class that provides constant values for the possible smoothing algorithms of a texture. */ 
class TextureSmoothing
{
    /** @private */
    public function TextureSmoothing() { throw new AbstractClassError(); }
    
    /** No smoothing, also called "Nearest Neighbor". Pixels will scale up as big rectangles. */
    inline public static var NONE:String      = "none";
    
    /** Bilinear filtering. Creates smooth transitions between pixels. */
    inline public static var BILINEAR:String  = "bilinear";
    
    /** Trilinear filtering. Highest quality by taking the next mip map level into account. */
    inline public static var TRILINEAR:String = "trilinear";
    
    /** Determines whether a smoothing value is valid. */
    public static function isValid(smoothing:String):Bool
    {
        return smoothing == NONE || smoothing == BILINEAR || smoothing == TRILINEAR;
    }
}