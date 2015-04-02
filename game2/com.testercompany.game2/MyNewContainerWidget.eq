
//
// MyNewContainerWidget
//

public class MyNewContainerWidget : LayerWidget
{
	public void initialize() {
		base.initialize();
		// Create and add your child widgets here
	}

	public void start() {
		base.start();
		// Add any code that needs to execute when the widget is displayed
	}

	public void stop() {
		base.stop();
		// Add any code that needs to undo anything done in start()
	}

	public void cleanup() {
		base.cleanup();
		// Add any code that needs to undo anything done in initialize()
	}
}