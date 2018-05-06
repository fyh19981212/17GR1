package dayin;

public class dayin implements inkbox,papaer{

	
	public String paper() {
		// TODO Auto-generated method stub
		return "A4 A5";
	}

	
	public String inkbox() {
		// TODO Auto-generated method stub
		return "caise baise";
	}
	public static void main(String[] args) {
		dayin r = new dayin();
		r.paper();
		r.inkbox();
	}
	
	

}
