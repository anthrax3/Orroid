# ������ ����� private�� �����ϰ� ���� method�� ���� �����Ѵ�.

$parser.node.children.each do |node|
	if node.type == NodeType::DefClass

		node.children.each do |node|

			if node.type == NodeType::DefValue
				if node.accessor == "public"
					$report.push node
				end
			end
		end
	end
end