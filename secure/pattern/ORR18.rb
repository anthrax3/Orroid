#
# NaN�� ���� ������ �ʴ´�
#

$parser.node.tour do |node|
	if node.type == NodeType::If
		if node.expression.include?("Double.NaN") == true
			$report.push node
		end
	end
end