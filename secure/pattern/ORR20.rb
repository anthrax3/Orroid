# �־��� ��ü�� class ���� ���� �� ���� Ŭ���� ������ ���ؼ��� �� �ȴ�.

$parser.node.tour do |node|
	if node.code.include?(".getClass().getName().equals(")
		$report.push node
	end
end