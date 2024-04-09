oldSp = game_get_speed(gamespeed_fps)
game_set_speed(30,gamespeed_fps) // old game fps

randomize()

chimpscore=0
maxtime=round(120+random(40))
time=maxtime
randomchimp=round(random(2))
window_set_caption("chimp game")

