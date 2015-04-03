
//
// This file is part of minion
//
// This is a blank template. Please edit your Main class below
// in order to develop your application.
//

public class Main: SceneApplication {
	public FrameController create_main_scene() {
		return (new MainScene());
	}
}
public class MainScene : SEScene 
{	   SESprite bg;
	
		
			MyChar m;

		
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		
		rsc.prepare_image("bg","mainbg", get_scene_width(), get_scene_height());
  		bg = add_sprite_for_image(SEImage.for_resource("bg"));
		bg.move(0,0);
		AudioClipManager.prepare("bgsound");
		
		AudioClipManager.play("bgsound");
		
	add_entity(m = new MyChar());
	}


}
