#
# ��ü�� ����ִ� ���� ������ ����ϸ� �� �ȴ�.
#

$parser.node.tour do |node|
	type = node.type
	if type == NodeType::For or type == NodeType::While
		if node.children.size == 0
			$report.push node
		end
	end
end