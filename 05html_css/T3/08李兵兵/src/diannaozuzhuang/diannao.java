package diannaozuzhuang;

public class diannao implements cpu,ems,canshu {

	@Override
	public String canshu() {
		// TODO Auto-generated method stub
		return "pingpai  leixing";
	}

	@Override
	public String ems() {
		// TODO Auto-generated method stub
		return "rongliang";
	}

	@Override
	public String cpu() {
		// TODO Auto-generated method stub
		return "rongliang";
	}
	public static void main(String[] args) {
		 diannao  c = new  diannao ();
		System.out.println(c.cpu());
		System.out.println(c.ems());
		System.out.println(c.canshu ());
		
	}

	

}
