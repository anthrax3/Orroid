#
# finally ���� ���۽����� �������ͼ��� �� �ȴ�.
#


$parser.node.tour do |node|
	if node.type == NodeType::Finally
		node.tour do |node|
			if node.type == NodeType::Return
				$report.push node
			end
		end
	end
end