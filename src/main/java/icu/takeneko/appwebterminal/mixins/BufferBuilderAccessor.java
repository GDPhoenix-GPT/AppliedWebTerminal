package icu.takeneko.appwebterminal.mixins;

import com.mojang.blaze3d.vertex.BufferBuilder;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.gen.Accessor;

@Mixin(BufferBuilder.class)
public interface BufferBuilderAccessor {
    @Accessor(value = "vertices")
    int getVertices();
}
