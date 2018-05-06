package dayin;


public class Dayin implements Inkbox,Paper{

	@Override
	public String paper() {
		// TODO Auto-generated method stub
		return "A4 A5";
	}

	@Override
	public String inkbox() {
		// TODO Auto-generated method stub
		return "caise baise";
	}
	public static void main(String[] args) {
		Dayin d = new Dayin();
		d.paper();
		d.inkbox();
	}
	
	

}
