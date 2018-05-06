package fangdaomen;

public class Fangdaodoor extends Door implements Lock {

	@Override
	public void lockUp() {
		System.out.println("插进钥匙，向左旋转钥匙三圈，锁上了，拔出钥匙");
	}

	@Override
	public void openLock() {
		System.out.println("插进钥匙，向右旋转钥匙三圈，锁开了，拔出钥匙");
	}



}
