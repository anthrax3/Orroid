# 
# NullPointerException�� ���� ���ܸ� ���� �ʴ´�
#

$parser.node.tour do |node|
	if node.type == NodeType::Catch 
		if node.arg.include?("NullPointerException") == true	
			$report.push node
		end
	end
end