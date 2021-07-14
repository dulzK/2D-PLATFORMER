//resize game surface
surface_resize(application_surface, RES.WIDTH, RES.HEIGHT);

//resize window
var _windowWidth = RES.WIDTH * RES.SCALE;
var _windowHeight = RES.HEIGHT * RES.SCALE;

window_set_size(_windowWidth, _windowHeight);

//start game
room_goto_next();