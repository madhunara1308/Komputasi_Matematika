function genes = create_genes(nar)
random_number = randi ([32,126],1,nar); %randi merupakan perintah untuk menampilkan angka random
genes = char(random_number);
end

