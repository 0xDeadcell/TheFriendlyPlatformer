
//uniform sampler2D noise_texture : source_color;
//uniform sampler2D noise_texture2 : source_color;
//uniform sampler2D SCREEN_TEXTURE : hint_screen_texture, filter_linear_mipmap;


shader_type canvas_item;
uniform float speed;


void fragment () {
	COLOR = texture(TEXTURE, vec2(UV.x + TIME * speed, UV.y));
}