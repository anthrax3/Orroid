#
# ���� Ȱ��ȭ�� �� ���� �� �ִ� ������ �������� �ʴ´�
#

$parser.node.filter( NodeType::DefClass ) do |node|
	
	node.filter( NodeType::DefFunction ) do |node|
		if node.attrs.include?("synchronized") == true
			
			node.tour do |node|
				if node.type == NodeType::CallFunc
					if node.a == "Thread" and node.b == "sleep"
						$report.push node
					end
				end
			end

		end
	end

end