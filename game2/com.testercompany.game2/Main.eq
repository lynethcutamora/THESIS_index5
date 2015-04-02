
//
// This file is part of game2
//
// This template implements a common mobile application that includes a navigation
// bar, an optional menu and an optional toolbar. Edit to suit your needs and to
// make your actual application.
//

public class Main : MobileApplicationControllerWidget
{
	// AboutAction: An event handler that executes when the user selects the
	// "About the application" menu entry

	class AboutAction : Executable
	{
		public void execute() {
			AboutDialog.show();
		}
	}

	// The FirstScreenWidget represents the first screen of the application.

	class FirstScreenWidget : MobileApplicationScreenWidget
	{
		// The title as shown in the title bar. Return null to remove the title bar.

		public Object get_mobile_app_title() {
			return("Main Menu");
		}

	
		// The initialize() method constructs the main user interface of the screen's
		// content area. This is where you would construct any user interface required
		// by this screen of your application.

		public void initialize() {
			base.initialize();

			// The default drawing color for all child widgets

			set_draw_color(Color.instance("white"));

			// Create a light gray background

			add(CanvasWidget.for_color(Color.instance("#CCCCCC")));

			// Organize the other widgets in a vertical box with a 1mm margin
			// and 1mm spacing between widgets.

			var box = BoxWidget.vertical();
			box.set_margin(px("1mm"));
			box.set_spacing(px("1mm"));
			box.add_box(1, LabelWidget.for_string("Welcome")
				.set_font(Theme.font().modify("10mm bold color=#802222")));
			box.add_box(0, ButtonWidget.for_string("Single Player")
				.set_color(Color.instance("#80FF80")).set_event("continue"));
			add(box);
		
			
		
		}

		public void cleanup() {
			base.cleanup();
		}

		public void on_event(Object o) {
			// Note that this "continue" event is defined as the event emitted
			// by the ButtonWidget that was created in initialize(). Once the
			// event is received, the application moves to the second screen.

			if("continue".equals(o)) {
				push_screen(new SecondScreenWidget());
			}
		}
	}

	// The SecondScreenWidget class represents the second screen of the application.
	// The application moves where when the "continue" event is emitted in the first
	// screen, as shown above.

	class SecondScreenWidget : MobileApplicationScreenWidget
	{
	
		// The title as shown in the title bar. Return null to remove the title bar.

		public Object get_mobile_app_title() {
			return("Single Player");
		}

		// The menu on the top right corner of the window is populated from the data
		// supplied by this method.


		// Construct a simple user interface with a blue gradient background

		public void initialize() {
			base.initialize();
			add(CanvasWidget.for_color_gradient(Color.instance("#8080FF")));
		}

		public void cleanup() {
			base.cleanup();
		}

		// If the "back" event is received (from the menu, as shown above), then go
		// back to the previous screen.

		public void on_event(Object o) {
			if("back".equals(o)) {
				pop_screen();
			}
		}
	}

	public Main() {
		// Control the look of the application menu by changing the preference below.
		// Possible values include MENU_OVERLAY, MENU_DROPDOWN and MENU_POPUP

		set_menu_type_preference(MobileApplicationControllerWidget.MENU_OVERLAY);
	}

	public void initialize() {
		base.initialize();

		// Simply move to the first screen of the application here

		push_widget(new FirstScreenWidget());
	}
}
