#
# ����ȭ �޼����� ������ �ñ״��ĸ� �����Ѵ�.
#

$parser.node.children.each do |node|
	if node.type == NodeType::DefClass
		if node.implements != nil and node.implements.include?("Serializable") == true

			node.children.each do |node|
				if node.type == NodeType::DefFunction
					if node.name == "readObject" or node.name == "writeObject"
						$report.push node if node.accessor == "public"
					end
				end
			end
		end
	end
end