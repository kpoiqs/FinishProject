package page;

public class PageGroupResult {
	private int groupStartNumber;//�� �Ʒ� ������ ���� ������ ��
	private int groupEndNumber;//�� �Ʒ� ������ ������ ������ ��
	
	private boolean beforPage = true;
	private boolean afterPage = true;
	
	private int selectPageNumger; 
	
	public int getGroupStartNumber() {
		return groupStartNumber;
	}
	public void setGroupStartNumber(int groupStartNumber) {
		this.groupStartNumber = groupStartNumber;
	}
	public int getGroupEndNumber() {
		return groupEndNumber;
	}
	public void setGroupEndNumber(int groupEndNumber) {
		this.groupEndNumber = groupEndNumber;
	}
	public boolean isBeforPage() {
		return beforPage;
	}
	public void setBeforPage(boolean beforPage) {
		this.beforPage = beforPage;
	}
	public boolean isAfterPage() {
		return afterPage;
	}
	public void setAfterPage(boolean afterPage) {
		this.afterPage = afterPage;
	}
	public int getSelectPageNumger() {
		return selectPageNumger;
	}
	public void setSelectPageNumger(int selectPageNumger) {
		this.selectPageNumger = selectPageNumger;
	}

	
}
