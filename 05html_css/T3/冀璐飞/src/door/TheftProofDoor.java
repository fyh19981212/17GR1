package door;

public class TheftProofDoor extends Door implements Lock{

	public String lock() {
		return "door lock le";

	}

	public String unlock() {
		// TODO Auto-generated method stub
		return "door unlock le";
	}

	public static void main(String[] args){
		TheftProofDoor tpd = new TheftProofDoor();
		System.out.println( tpd.close());
		
		System.out.println(tpd.lock());
		
		
		System.out.println(tpd.unlock());
		System.out.println(tpd.open());
		
		
		
		
	}
	
	
	
	
}

