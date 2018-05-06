package jisuanji;

public class jisuanji implements CPU,Ems,Harddisk {

	@Override
	public String harddisk() {
		// TODO Auto-generated method stub
		return "pingpai  leixing";
	}

	@Override
	public String Ems() {
		// TODO Auto-generated method stub
		return "rongliang";
	}

	@Override
	public String cpu() {
		// TODO Auto-generated method stub
		return "rongliang";
	}
	public static void main(String[] args) {
		jisuanji c = new jisuanji();
		System.out.println(c.cpu());
		System.out.println(c.Ems());
		System.out.println(c.harddisk());
		
	}

}