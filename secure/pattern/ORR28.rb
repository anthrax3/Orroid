#
# ������ ������ �޼��带 ������ �������� ���� �޼���� �������̵����� �ʴ´�.
#

$parser.node_list[0].children.each do |node|
	if node.type == NodeType::DefClass
		
		# ��ӹ��� Ŭ�����̰�, �θ� Ŭ������ ���̺� �ִ��� �˻�
		if node.extends != nil and $analyzer.structure[ node.extends ] != nil
			
			_super = $analyzer.structure[ node.extends ]

			node.children.each do |node|
				if node.type == NodeType::DefFunction
					
					# �ش� �޼ҵ尡 ���� Ŭ�������� �ִ��� �˻�
					_super.mtd.each do |sm|
						if sm.name == node.name
							if sm.attrs.include?("synchronized") and !node.attrs.include?("synchronized")
								$report.push node
							end
						end
					end
				end
			end
		end
	end
end