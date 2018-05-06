package door;

public class fangdao extends door implements lock,doorbell {

	@Override
	public String lock() {
		// TODO Auto-generated method stub
		return "suoshangle";
	}

	@Override
	public String unlock() {
		// TODO Auto-generated method stub
		return "kaisuole";
	}
	public static void main(String[] args) {
		fangdao d = new fangdao();
		System.out.println(d.close());
		System.out.println(d.lock());
		System.out.println(d.cuncu());
		System.out.println(d.unlock());
		System.out.println(d.open());
	}

	@Override
	public String cuncu() {
		// TODO Auto-generated method stub
		return "photo compeleted";
	}

}
