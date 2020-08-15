var hspd = hspeed;
var vspd = vspeed;

//----Horizontal collision
var h_Sign = sign(hspd);

if (scr_CollisionCheck(x+hspd,y,obj_Tags.colls))
{
	while (!scr_CollisionCheck(x+h_Sign,y,obj_Tags.colls)) {
		x += sign(hspd)
	}
	hspeed = 0;
}


//----Vertical collision
var v_Sign = sign(vspd);

if (scr_CollisionCheck(x,y+vspd,obj_Tags.colls))
{
	while (!scr_CollisionCheck(x,y+v_Sign,obj_Tags.colls)) {
		y += sign(vspd)
	}
	vspeed = 0;
}
