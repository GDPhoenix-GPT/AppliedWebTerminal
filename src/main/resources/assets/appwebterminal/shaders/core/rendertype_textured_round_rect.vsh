// This file is part of Modern UI.
// Copyright (C) 2024 BloCamLimb.
// Licensed under LGPL-3.0-or-later.
#version 150

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;

in vec3 Position;
in vec4 Color;
in vec2 UV0;

out vec2 f_Position;
out vec4 f_Color;
out vec2 texCoord0;

void main() {
    f_Position = Position.xy;
    f_Color = Color;
    texCoord0 = UV0;

    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);
}
