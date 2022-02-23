function spriteToBase64Compressed(sprite, imgIndex) {
  var surf = surface_create(sprite_get_width(sprite), sprite_get_height(sprite));
  surface_set_target(surf);
  gpu_set_blendmode_ext(bm_one, bm_zero);
  
  draw_sprite(sprite, imgIndex, sprite_get_xoffset(sprite), sprite_get_yoffset(sprite));
  
  surface_reset_target();
  
  var buff = buffer_create(sprite_get_width(sprite) * sprite_get_height(sprite) * 4 + 8, buffer_grow, 1);
  
  buffer_write(buff, buffer_u16, sprite_get_width(sprite));
  buffer_write(buff, buffer_u16, sprite_get_height(sprite));
  buffer_write(buff, buffer_u16, sprite_get_xoffset(sprite));
  buffer_write(buff, buffer_u16, sprite_get_yoffset(sprite));

  buffer_get_surface(buff, surf, 8);
  
  var str = buffer_base64_encode(buff, 0, buffer_get_size(buff));
  surface_free(surf);
  buffer_delete(buff);
  gpu_set_blendmode(bm_normal);
  return str;
}