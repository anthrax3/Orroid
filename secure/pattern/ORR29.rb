#
# ��ü ���� �� this ������ ������� �ʰ��Ѵ�
#

$parser.node.filter( NodeType::DefClass ) do |node|
	klass_name = node.name

	member_value = Hash.new

	# ��� ���� ���̺��� �����
	node.children.each do |node|
		if node.type == NodeType::DefValue
			member_value[node.name] = node
		end
	end

	# �����ڸ� ã�´�.
	node.children.each do |node|
		if node.type == NodeType::DefFunction

			# ������
			if node.name == klass_name
				
				# public static ��� ������ this�� �����ϴ°� ã��
				node.children.each do |node|
					if node.type != nil 
						if node.type == NodeType::Operation
							if member_value[node.a] != nil and node.b == "this" and member_value[node.a].attrs != nil
								if	member_value[node.a].attrs.include?("static") and
									member_value[node.a].accessor.include?("public")
										$report.push node
								end
							end
						end
					end
				end

				break
			end
	
		end
	end
end