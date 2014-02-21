#
# readObejct() ������ �������̵�� �� �ִ� �޼��带 ȣ������ �ʴ´�.
#

# Serializable �� ������ Ŭ������ ã��
method = nil

$parser.node.children.each do |node|
	if node.type == NodeType::DefClass
		if node.implements != nil and node.implements.include?("Serializable") == true

			# readObject �޼ҵ带 ã��
			node.children.each do |node|
				if node.type == NodeType::DefFunction
					if node.name == "readObject"

						# readObject���ο��� call �Ǵ� �޼ҵ尡 ��� ������ �޼ҵ����� �˻�
						node.children.each do |node|
							if node.type == NodeType::CallFunc
								$analyzer.structure[$parser.class_name].mtd.each do |sm|
									if sm.name == node.b
										method = sm.node
									end
								end

								if (method != nil) and ((method.accessor == "public") or (method.accessor == "protected"))
									$report.push node
								end
							end
						end

					end
				end
			end
		end

	end
end