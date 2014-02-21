#
# Ŭ������ ������ ���� ����ȭ ȣȯ���� �����Ѵ�.
#

$parser.node.children.each do |node|
	if node.type == NodeType::DefClass
		if node.implements != nil and node.implements.include?("Serializable") == true
			
			has_serial_id = false
			
			node.children.each do |node|
				if node.type == NodeType::DefValue
					if node.name == "serialVersionUID" and
					  node.init_value != nil
						has_serial_id = true
					end
				end
			end

			if has_serial_id == false
				$report.push node
			end
		end
	end
end