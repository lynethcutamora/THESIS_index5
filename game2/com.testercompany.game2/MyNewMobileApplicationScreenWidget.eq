
//
// MyNewMobileApplicationScreenWidget
//

public class MyNewMobileApplicationScreenWidget : MobileApplicationScreenWidget
{
	public Object get_mobile_app_title() {
		return(Application.get_display_name());
	}

	public Collection get_mobile_app_menu_items() {
		var v = LinkedList.create();
		return(v);
	}

	public void initialize() {
		base.initialize();
	}

	public void cleanup() {
		base.cleanup();
	}
}