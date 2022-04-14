This project has extra shaders for the Material Editor. 

Properties not mentioned in a shader description have the same effect as they do in the game textures.

# Custom/Aura
Adds a glowing border around an object. Best used as a second material for an object you want to have the aura. If set as the only material, the object itself will be invisible.

## Properties
**Radius:** Sets the size of the aura.

**Gradient:** A texture that determines how the aura color changes with distance.

**Color:** Used to tint the aura.

**NoiseTex:** A texture that is used to modify the aura if the NoiseAmount parameter is nonzero. Lighter colors make the aura stronger.

**NoiseAmount:** A parameter that's multiplied by the value from NoiseTex to determine the actual amount of noise.

**AnimationU/AnimationV:** Allow animation of the noise texture for fire-like effects.

**DetailMask/LineWidthS:** Only used to calculate the outline width. These should be the same as for the primary material, or there may be gaps between the outline and the aura.

**GeometryExtend:** Controls the size of the geometry the aura is drawn on. Increase if the edge of the aura is getting cut off, but it may impact performance.

# Custom/Iridescent
For objects with rainbow highlights and similar effects, such as soap bubbles, oil slicks, or very fine hair.

## Properties
**IridescenceTex:** The texture that's used to draw the iridescent highlight. Default is a rainbow. Experiment and see what you can do!

**IridescenceV:** Controls the strength of the iridescence effect.

**IridescencePower:** Controls the size of the iridescence effect.

**IridescenceMask:** Masks off areas of the main texture that iridescence should apply to.

**IridescenceMode:** Controls how the iridescence texture is rotated relative to the object's surface.
- Mode 0: Iridescence "up" matches the camera "up".
- Mode 1: Iridescence "up" is a particular direction in the object's local coordinates, given by the LocalVectorX/Y/Z parameters.
- Mode 2: Iridescence "up" matches with object UV space "up".

**LocalVectorX/LocalVectorY/LocalVectorZ:** Used by IridescenceMode 1, above.

# Custom/MatCap
Yet another Matcap shader. This one fixes a math error in BetterMatcap (it fails to normalize the view-reflection vector) and supports matcap textures with alpha.

## Properties
**Matcap:** The matcap texture. The default one is supposed to be vaguely cartoony.

**Color:** Used to tint the matcap texture.

# Custom/Sticker
Adds a 2D image that always faces the camera. For best results, apply to a sphere.

## Properties
**StickerTex:** The 2D image to be displayed.

**Color:** Used to tint the sticker texture.

**Radius:** Scales the size of the sticker texture. Making it too big may make it get cut off by the edge of the object’s geometry, consider enlarging the object the shader is applied to instead.

**HideDepth:** Adjusts the effective depth of the sticker relative to the center of the object. Positive numbers move closer to the camera, negative numbers move further away.

**FadeInterval:** If nonzero, the sticker will gradually become more visible as it nears the HideDepth, rather than appearing abruptly. Useful for simulating things like fog or glowing.

**AllowPartialHiding:** If set to 1, the sticker will behave like a normal object, where parts of it can be hidden behind other objects. If set to 0, the entire sticker will appear and disappear at the same time, depending on whether the center is hidden or not.

**AnimationSpeed:** Set to nonzero to give the sticker simple animation. Value is in cycles per second.

**AnimationOffsetU, AnimationOffsetV, AnimationScaleU, AnimationScaleV, AnimationPhase:** Control the amount of animation.

# Custom/Translucent
For transparent and translucent objects.

**Transparency:** Allows the background to show through the object.

**Translucency:** Allows the background to show through the object, but tinted by the object’s color.

**FakeRefraction:** Distorts the background behind the object, giving the impression that the material is refracive.

**Matcap:** A matcap texture.

**MatcapAlpha:** Controls whether to use the matcap texture or the object’s normal texture.

**ShadowsOnBackground:** If 0, transparent parts of the object don’t have shadows. If 1, shadows appear fully even on transparent areas, as if the background was painted onto the object.
