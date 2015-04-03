
//
// MyChar
//

public class MyChar: SEEntity
{
	SESprite char;

	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);

		rsc.prepare_image("char", "ch", 0.05*get_scene_width(), 0.10*get_scene_height());

		char = add_sprite_for_image(SEImage.for_resource("char"));
		char.move(get_scene_width()/2.09, get_scene_height()/2.6);
	}

	public void cleanup() {
		base.cleanup();
		char = SESprite.remove(char);
		
	}

	public double getX() {
		return (char.get_x());
	}
	public double getY() {
		return (char.get_y());
	}
	public double getWidth() {
		return (char.get_width());
	}
	public double getHeight() {
		return (char.get_height());
	}
	
	public void tick(TimeVal now, double delta) {
		base.tick(now, delta);
		
		foreach(SEPointerInfo pi in iterate_pointers()) {
			do{
				if(pi.get_pressed() && (pi.get_x()<char.get_x() && pi.get_y()<char.get_y())) {
					char.move(char.get_x()-delta*150, char.get_y()-delta*150);
				}
				if(pi.get_pressed() && (pi.get_x()>char.get_x() && pi.get_y()<char.get_y())) {
					char.move(char.get_x()+delta*150, char.get_y()-delta*150);	
				}
				if(pi.get_pressed() && (pi.get_x()<char.get_x() && pi.get_y()>char.get_y())) {
					char.move(char.get_x()-delta*150, char.get_y()+delta*150);
				}
				if(pi.get_pressed() && (pi.get_x()>char.get_x() && pi.get_y()>char.get_y())) {
					char.move(char.get_x()+delta*150, char.get_y()+delta*150);
				}
			}while(pi.get_x()==char.get_x() && pi.get_y()==char.get_y());
		}
		if(is_key_pressed("up")) {
			char.move(char.get_x(),char.get_y()+delta*-150);
		}
		if(is_key_pressed("right")) {
			char.move(char.get_x()+delta*150, char.get_y());
		}
		if(is_key_pressed("down")) {
			char.move(char.get_x(), char.get_y()+delta*150);
		}
		if(is_key_pressed("left")) {
			char.move(char.get_x()+delta*-150, char.get_y());
		}
	}
}