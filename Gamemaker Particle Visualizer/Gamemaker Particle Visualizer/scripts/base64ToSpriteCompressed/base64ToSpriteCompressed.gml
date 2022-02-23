function base64ToSpriteCompressed(str) {
  var buff = buffer_base64_decode(str);
  
  var width = buffer_read(buff, buffer_u16),
      height = buffer_read(buff, buffer_u16),
      xoffset = buffer_read(buff, buffer_u16),
      yoffset = buffer_read(buff, buffer_u16);
  
  var surf = surface_create(width, height);

  buffer_set_surface(buff, surf, 0);

  buffer_delete(buff);
  var spr = sprite_create_from_surface(surf, 0, 0, width, height, false, false, xoffset, yoffset);
  surface_free(surf);
  return spr;
}