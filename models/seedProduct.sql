-- Product Color 
INSERT INTO "product_color" ("code", "name", "hex_color")
VALUES ('043', 'Nude', '#ECE1D0'),
('031', 'White', '#FFFFFF'),
('014', 'Black', '#000000'),
('026', 'Dusty Pink', '#E6D6D9'),
('036', 'Coral', '#F0BBBA'),
('093', 'Baby Blue', '#E8EEFB'),
('035', 'Cream', '#FCFBF2'),
('410', 'Seafoam', '#A2D4CA'),
('030', 'Lavender', '#C49BC9'),
('021', 'Mint', '#E1F9EE'),
('169', 'Slate Blue', '#8C8FA8'),
('146', 'Taupe', '#C7C1BA'),
('275', 'Golden Brown', '#7C703B'),
('052', 'Navy Blue', '#030F56'),
('417', 'Medium Denim Washed', '#90A8CD'),
('156', 'Sage', '#9EA99D'),
('347', 'Dusty Blue', '#A6AFBE'),
('124', 'Khaki', '#AAA07E'),
('149', 'Dusty Green', '#617D5C'),
('277', 'Brown', '#955624'),
('279', 'Beige', '#F7EED2'),
('251', 'Butternut', '#E1A542')


-- Product Main Category
INSERT INTO "product_main_category" ("code", "name")
VALUES ('C01', 'Highlights'),
('C02', 'Apparel & Accessories'),
('C03', 'Collections'),
('C04', 'Trends & Occasions'),
('C05', 'Gift Cards')


-- Product Subcategory
INSERT INTO "product_subcategory" ("code", "name", "main_cat")
VALUES ('C0201', 'Tops', 'C02'),
('C0202', 'Dresses', 'C02'),
('C0203', 'Pants', 'C02'),
('C0204', 'Shorts & Skorts', 'C02'),
('C0205', 'Jumpsuits', 'C02'),
('C0206', 'Skirts', 'C02'),
('C0207', 'Blazers & Outerwear', 'C02'),
('C0208', 'Cardigans & Knitwear', 'C02'),
('C0209', 'Jeans', 'C02'),
('C0210', 'Activewear', 'C02'),
('C0211', 'Lifestyle', 'C02'),
('C0212', 'Jewellery', 'C02'),
('C0213', 'Footwear', 'C02'),
('C0214', 'Intimates', 'C02')



-- Product Occassion
INSERT INTO "product_occassion" ("code", "name")
VALUES ('O01', 'Workwear'),
('O02', 'Wedding & Party'),
('O03', 'Padded Style'),
('O04', 'Denim')



-- Product
INSERT INTO "product" ("code", "name", "main_cat", "subcategory", "occassion")
VALUES ('hy5532', 'Christal Shoulder Padded Blazer', NULL, NULL,'O01'),
('ln1278', 'Galilea A-line Pleat Dress', NULL, NULL,'O01'),
('ln0738', 'Anastasia Contrast Tailored Romper', 'C02', 'C0205',NULL),
('ln0922', 'Fiore Micro Pleated Tie Back', 'C02', 'C0201',NULL),
('th2266', 'Lailee Knit Camisole', 'C02', 'C0201',NULL),
('hy5956', 'Raylin Elastic Textured Lounge Pants', 'C02', 'C0203',NULL),
('hy6033', 'Leonie Straight Cut Shorts', 'C02', 'C0204',NULL),
('ln0826', 'Akayla Broderie Reversible Crop Top', 'C02', 'C0201',NULL),
('ln0822', 'Jalessa Tweed Smocked Top', 'C02', 'C0201',NULL),
('ln0878', 'Bonie Elastic Sash Shorts', 'C02', 'C0204',NULL),
('hy5866', 'Jaliyah Button Down Camisole', 'C02', 'C0201',NULL),
('th1443', 'Maleah Textured Tie Back Dress', 'C02', 'C0202',NULL),
('hy6144', 'Lucienne Relaxed Blazer', NULL, NULL,'O01'),
('th2555', 'Felice Padded Embroidered Bustier Top', 'C02', 'C0201',NULL),
('th2628', 'Carmi Ribbed Square Neck Tank', 'C02', 'C0201',NULL),
('ln0765', 'Vivica Classic Wide Legged Pants', 'C02', 'C0203',NULL),
('ln1237', 'Lisbon Embroidered Square Neck Dress', 'C02', 'C0202',NULL),
('hy6136', 'Everlee Broderie Square Neck Blouse', 'C02', 'C0201',NULL),
('th1849', 'Adella Gingham Skorts', 'C02', 'C0204',NULL),
('ln0829', 'Shanisse Broderie Contrast Shell Top', 'C02', 'C0201',NULL)


-- Product Image
INSERT INTO "product_image" ("product_code", "product_color", "image_path", "main_display", "hover_display")
VALUES ('hy5532','043','hy5532-043_ycjzzc8ihsjwbpnn',true,false),
('hy5532','043','hy5532-043-1_azlymhc0cwjdr0lj',false,false),
('hy5532','043','hy5532-043-2_ct5x7nhpdobbtsaz',false,false),
('hy5532','043','hy5532-043-3_5awoqux8qtsffylh',false,false),
('hy5532','043','hy5532-043-4_omiy1vsrhrofilg7',false,true),
('hy5532','031','hy5532-031_3m0vknvnzfzk8mii',false,false),
('hy5532','031','hy5532-031-1_e8sge6oa61lrxvgg',false,false),
('hy5532','031','hy5532-031-2_pfhepsfyxoly7gxs',false,false),
('hy5532','031','hy5532-031-3_4b0tuhnclezjzzkf',false,false),
('hy5532','014','hy5532-014_msousv0o9urzhxyh',false,false),
('hy5532','014','hy5532-014-1_pqwgyl0w0jsiilba',false,false),
('hy5532','014','hy5532-014-2_xxpb5rb2usytdyku',false,false),
('hy5532','014','hy5532-014-3_1pmvmcle2c8s7xpz',false,false),
('hy5532','014','hy5532-014-4_pmt98ikuuafd6aza',false,false),
('ln1278','031','ln1278-031_7n5bbpqtvdnrosxo',true,false),
('ln1278','031','ln1278-031-1_yyeuiovmdny49cwp',false,false),
('ln1278','031','ln1278-031-2_kxlbelixewm7chlj',false,false),
('ln1278','031','ln1278-031-3_lyy2pxiextj2z6cs',false,false),
('ln1278','031','ln1278-031-4_rtqle2pjrscjydlj',false,false),
('ln1278','026','ln1278-026_xorme3sldvjzu6vu',false,true),
('ln1278','026','ln1278-026-1_y4jjc2w9fezcz644',false,false),
('ln1278','026','ln1278-026-2_6bhgrhutlikbqvf2',false,false),
('ln1278','026','ln1278-026-3_iucomxc1gygzthhu',false,false),
('ln1278','026','ln1278-026-4_pgdn7t6lnlbv7saz',false,false),
('ln0738','031','ln0738-031_bhq5ivo6cfz6echf',false,false),
('ln0738','031','ln0738-031-1_sbp19yugetiurdqm',false,false),
('ln0738','031','ln0738-031-2_vfyllodbstsct1gr',false,false),
('ln0738','031','ln0738-031-3_zuy75yfijvaeqnzr',false,false),
('ln0738','031','ln0738-031-4_pbglh03ozj2bmsog',false,false),
('ln0738','014','ln0738-014_duh237uqyytysolq',true,false),
('ln0738','014','ln0738-014-1_njq1epf8534lhecx',false,false),
('ln0738','014','ln0738-014-2_sfgpshxzjikdapok',false,false),
('ln0738','014','ln0738-014-3_bdnpuw3vlakkzfvh',false,false),
('ln0738','036','ln0738-036_wocyfzghsog97hqr',false,false),
('ln0738','036','ln0738-036-1_wtqtwsjmit0qgtxu',false,false),
('ln0738','036','ln0738-036-2_kcahyamdhmtx5ftq',false,false),
('ln0738','036','ln0738-036-3_hdvinqf3eyuoyz7o',false,false),
('ln0738','036','ln0738-036-4_xmjl4hsesdctlrr5',false,false),
('ln0738','093','ln0738-093_mgncmwizgvfqttnx',false,true),
('ln0738','093','ln0738-093-1_9ps73nonxl3rl7q7',false,false),
('ln0738','093','ln0738-093-2_toahpts6ojfvpnkz',false,false),
('ln0738','093','ln0738-093-3_erq4s3jw907ip3lq',false,false),
('ln0922','035','ln0922-035_a3s8bdazi9zzf6aa',true,false),
('ln0922','035','ln0922-035-1_dcdpjtlbnylcmkme',false,false),
('ln0922','035','ln0922-035-2_w1u6iv6nwuuawivj',false,false),
('ln0922','035','ln0922-035-3_gukequr2fa3mptsm',false,false),
('ln0922','410','ln0922-410_kbt81decuvokcdir',false,true),
('ln0922','410','ln0922-410-1_cmabvpmbnrmfdexh',false,false),
('ln0922','410','ln0922-410-2_rghtpjnptc9x65sa',false,false),
('ln0922','410','ln0922-410-3_ch8bkckyl4oz7yfb',false,false),
('th2266','031','th2266-031_fyyylr0ycoqbssr8',true,false),
('th2266','031','th2266-031-1_t7memjuyxjemusvq',false,false),
('th2266','031','th2266-031-2_ffbh9wzxzgzubxvf',false,false),
('th2266','031','th2266-031-3_nd7m0pppalnkxomk',false,false),
('th2266','031','th2266-031-4_vrxg6wxxhmmqrqb9',false,false),
('th2266','031','th2266-031-5_y6sh53eab5uyoe1n',false,false),
('th2266','031','th2266-031-6_kayi7jrcx109znaw',false,false),
('th2266','014','th2266-014_ye9w5e8gt4jyiqxk',false,false),
('th2266','014','th2266-014-1_wfyey4yh0kjst8fp',false,false),
('th2266','014','th2266-014-2_kqncryvedokdnwst',false,false),
('th2266','014','th2266-014-3_xefzzxopec3aujk3',false,false),
('th2266','014','th2266-014-4_qtujkdabrchjwdfa',false,false),
('th2266','030','th2266-030_aqz1qvchsrr0basj',false,true),
('th2266','030','th2266-030-1_xr32layt7jhvj8sb',false,false),
('th2266','030','th2266-030-2_py6ww3jlcezonka2',false,false),
('th2266','030','th2266-030-3_ray4esf52ci2ooqt',false,false),
('th2266','030','th2266-030-4_8jzskbowchsmdijy',false,false),
('th2266','030','th2266-030-5_gqltm015ahoybvh0',false,false),
('hy5956','021','hy5956-021_ye9yxozqaj7pazjl',true,false),
('hy5956','021','hy5956-021-1_smutlcw7laymbuzd',false,false),
('hy5956','021','hy5956-021-2_g7mnddksslbby957',false,false),
('hy5956','021','hy5956-021-3_exyncikbpl5nrhp8',false,false),
('hy5956','021','hy5956-021-4_kjqsi70nmolefiko',false,false),
('hy5956','169','hy5956-169_8npdz0337jhrohig',false,true),
('hy5956','169','hy5956-169-1_jn7lzllsblvhlduf',false,false),
('hy5956','169','hy5956-169-2_xcqgem7aoyy5ayo5',false,false),
('hy5956','169','hy5956-169-3_mjkcertvrowumrcf',false,false),
('hy5956','169','hy5956-169-4_byens4xdrrndpptr',false,false),
('hy5956','146','hy5956-146_cx1loyz4gsgd76ra',false,false),
('hy5956','146','hy5956-146-1_yajjaygpnqrni4vz',false,false),
('hy5956','146','hy5956-146-2_a0l1rrdhduumyslr',false,false),
('hy5956','146','hy5956-146-3_zm8oskh0de1mknvl',false,false),
('hy5956','146','hy5956-146-4_qbp7k0ysjh8qb5af',false,false),
('hy5956','146','hy5956-146-5_qqhrlebsvp3szbja',false,false),
('hy5956','146','hy5956-146-6_lcjke9rgkgqklysg',false,false),
('hy6033','031','hy6033-031_9s84p4hbhypjyc7q',true,false),
('hy6033','031','hy6033-031-1_xfldj8fx24op2tdy',false,false),
('hy6033','031','hy6033-031-2_7e6vjbto9emozxen',false,false),
('hy6033','031','hy6033-031-3_vwjnm2jtlenhawcy',false,false),
('hy6033','031','hy6033-031-4_ri1zkwx7j88rsyer',false,false),
('hy6033','275','hy6033-275_ontx90clr1cueaj9',false,true),
('hy6033','275','hy6033-275-1_gmwylsz3s8jjucny',false,false),
('hy6033','275','hy6033-275-2_fuagtuhzepijah54',false,false),
('hy6033','275','hy6033-275-3_0zgzdn1ptdqs53ts',false,false),
('hy6033','275','hy6033-275-4_d8kofnsmisq4ezsl',false,false),
('ln0826','031','ln0826-031_wzqrepufdm2qynpr',true,false),
('ln0826','031','ln0826-031-1_onskfya8e0jjhbkq',false,false),
('ln0826','031','ln0826-031-2_9uje4pcrmff0ethc',false,false),
('ln0826','031','ln0826-031-3_x4168vcscsfxbmir',false,false),
('ln0826','031','ln0826-031-4_vsifkqci1xncioxg',false,false),
('ln0826','031','ln0826-031-5_pjvkf0twyonji4ch',false,false),
('ln0826','052','ln0826-052_f9repzcvaay2cpl0',false,true),
('ln0826','052','ln0826-052-1_xlfhwlf7qjy83cbc',false,false),
('ln0826','052','ln0826-052-2_wazerozngop7hnyv',false,false),
('ln0826','052','ln0826-052-3_wv62qrc5kdt1ifcn',false,false),
('ln0826','052','ln0826-052-4_dw9uexppxx5evhpw',false,false),
('ln0822','035','ln0822-035_op2oerqqzosrz0sm',true,false),
('ln0822','035','ln0822-035-1_yfy0zuvworgsida4',false,false),
('ln0822','035','ln0822-035-2_rtqgvclj5yw0tqd2',false,false),
('ln0822','035','ln0822-035-3_lvwidd5c7t4rsp4x',false,false),
('ln0822','035','ln0822-035-4_enclq1dtvf2y5rcn',false,false),
('ln0822','410','ln0822-410_xz2evrykcgdsl9p4',false,true),
('ln0822','410','ln0822-410-1_nlfbqoyzdixgbjnw',false,false),
('ln0822','410','ln0822-410-2_lpisbeusqphdwxyj',false,false),
('ln0822','410','ln0822-410-3_odbnvqnx6yvmrhod',false,false),
('ln0822','410','ln0822-410-4_eprnbrttoiymoipf',false,false),
('ln0878','031','ln0878-031_vqr8madxwbvd4aao',true,false),
('ln0878','031','ln0878-031-1_2brgyz5ktv89ipou',false,false),
('ln0878','031','ln0878-031-2_ay9so1zqidpwvdkz',false,false),
('ln0878','031','ln0878-031-3_5pbfn1xoxqbdzloc',false,false),
('ln0878','417','ln0878-417_9hfwpuhofnotw1uj',false,true),
('ln0878','417','ln0878-417-1_6bhyw3chupbg17cd',false,false),
('ln0878','417','ln0878-417-2_kzpozrknsy9eibno',false,false),
('ln0878','417','ln0878-417-3_4fzxlbcyfwfrdqdv',false,false),
('hy5866','031','hy5866-031_0swgtoscqwopbkkc',true,false),
('hy5866','031','hy5866-031-1_pxucehoxkmuzmrc8',false,false),
('hy5866','031','hy5866-031-2_c2sabbk9bobizhwm',false,false),
('hy5866','031','hy5866-031-3_aoycjwvnjwgl2sab',false,false),
('hy5866','031','hy5866-031-4_qwzllfbhwgrshhxd',false,false),
('hy5866','156','hy5866-156_ify3ttqfulh8c3jq',false,true),
('hy5866','156','hy5866-156-1_et2qqgpqlcisvptc',false,false),
('hy5866','156','hy5866-156-2_xlijmqfc5wxpgb21',false,false),
('hy5866','156','hy5866-156-3_jbl2dqgulhox48cb',false,false),
('hy5866','156','hy5866-156-4_zez9cuzf1yhsxx5l',false,false),
('th1443','031','th1443-031_cfljfaz4qzhdywa4',false,false),
('th1443','031','th1443-031-1_vnvosofqx5ekmppf',false,false),
('th1443','031','th1443-031-2_ydptml2rxl6smbjf',false,false),
('th1443','031','th1443-031-3_meusaonbtxthmp9g',false,false),
('th1443','031','th1443-031-4_296wpmqwmws3hjv9',false,false),
('th1443','014','th1443-014_hhkpubzrz0nsdq3z',false,true),
('th1443','014','th1443-014-1_iuojqm8iaxaiqjtk',false,false),
('th1443','014','th1443-014-2_4kkcaydllybuvrjg',false,false),
('th1443','014','th1443-014-3_cfdg7l7ja94loqnp',false,false),
('th1443','347','th1443-347_gxve431hkokr3o5n',true,false),
('th1443','347','th1443-347-1_nilwcl85krfmvmlf',false,false),
('th1443','347','th1443-347-2_crrujhhnveosyxmb',false,false),
('th1443','347','th1443-347-3_28bbzpevxvapqr9z',false,false),
('th1443','347','th1443-347-4_udwerfqjg9cifhta',false,false),
('th1443','347','th1443-347-5_gujcd3rhe50sj84s',false,false),
('hy6144','124','hy6144-124_t5iik0yvovakbjbk',true,false),
('hy6144','124','hy6144-124-1_e0iwdxssy4ikvrqz',false,false),
('hy6144','124','hy6144-124-2_rrnx9qz3lyv7fpla',false,false),
('hy6144','124','hy6144-124-3_cuilsqe8klqj2kiv',false,false),
('hy6144','124','hy6144-124-4_ve0polzshy84x44b',false,false),
('hy6144','149','hy6144-149_g05jmlbkqfjbfgfa',false,true),
('hy6144','149','hy6144-149-1_ebt1zefpo8sbbxu5',false,false),
('hy6144','149','hy6144-149-2_a2aultpzbyjrrdvf',false,false),
('hy6144','149','hy6144-149-3_j90wyzcrq6uqadbs',false,false),
('hy6144','149','hy6144-149-4_n8802qmxg8q0hfev',false,false),
('th2555','031','th2555-031_xhg7lgf9q9gtesqm',true,false),
('th2555','031','th2555-031-1_fafeownmtfkuw7op',false,false),
('th2555','031','th2555-031-2_qfuvgdxfclk0bomm',false,false),
('th2555','031','th2555-031-3_vl6iiqbrb09lzmuu',false,false),
('th2555','031','th2555-031-4_qkflq9favcwiqkwv',false,false),
('th2555','031','th2555-031-5_smjgr58tg6znpbnz',false,false),
('th2555','031','th2555-031-6_nk1xqfbk8rktnmsy',false,false),
('th2555','014','th2555-014_d8v4ry4blwj10dke',false,true),
('th2555','014','th2555-014-1_jokict3garsofxvh',false,false),
('th2555','014','th2555-014-2_fv4quwpoyjodm18z',false,false),
('th2555','014','th2555-014-3_h3ou0fgw2nmcpuk1',false,false),
('th2555','014','th2555-014-4_ta67v7aeiekeoso0',false,false),
('th2555','014','th2555-014-5_hxf5pocvtzrwis4y',false,false),
('th2628','031','th2628-031_3fvgeiwjcyzbrxyx',true,false),
('th2628','031','th2628-031-1_l3wq95xqparsesbi',false,false),
('th2628','031','th2628-031-2_q1or7rtgruspqg92',false,false),
('th2628','031','th2628-031-3_cu5sf2gghwuu4oqs',false,false),
('th2628','031','th2628-031-4_kghbvy5ziorinkik',false,false),
('th2628','031','th2628-031-5_likiykil0jadsrqo',false,false),
('th2628','031','th2628-031-6_r34mfupq4okvumfl',false,false),
('th2628','031','th2628-031-7_pojejjkdptlwzbui',false,false),
('th2628','014','th2628-014_iqdpmbjvdphiwr0q',false,false),
('th2628','014','th2628-014-1_jyomtoi9zudw8fpf',false,false),
('th2628','014','th2628-014-2_ycqp2yskzjthht8d',false,false),
('th2628','014','th2628-014-3_cvkeg1luzv8ulptx',false,false),
('th2628','014','th2628-014-4_riq94ylicbxpohpo',false,false),
('th2628','277','th2628-277_lffafnyzmslu3jma',false,true),
('th2628','277','th2628-277-1_s1alxsdt72ad4hc1',false,false),
('th2628','277','th2628-277-2_ub9p8s5rcfujfw11',false,false),
('th2628','277','th2628-277-3_ydaqbiahcprjogdc',false,false),
('th2628','277','th2628-277-4_8gsr8dib8cofbllj',false,false),
('th2628','277','th2628-277-5_7v0hkumvfcww5mjb',false,false),
('th2628','277','th2628-277-6_xopo4xrkfqgoprmq',false,false),
('th2628','277','th2628-277-7_iekcxofarqk0nl2y',false,false),
('ln0765','031','ln0765-031_johmhkjiffxcmcbh',false,true),
('ln0765','031','ln0765-031-1_kxpslk4hgcmtpkmc',false,false),
('ln0765','031','ln0765-031-2_zi2r0r41mph6lm5e',false,false),
('ln0765','031','ln0765-031-3_rcfsfschrxqho3eu',false,false),
('ln0765','014','ln0765-014_3u2rz8txd97rx8gs',false,false),
('ln0765','014','ln0765-014-1_mwy2tujj75to3af4',false,false),
('ln0765','014','ln0765-014-2_bkf9msfahtitfl4v',false,false),
('ln0765','014','ln0765-014-3_dqso56epxekpu9oj',false,false),
('ln0765','279','ln0765-279_off2o1d5anmv9yqb',true,false),
('ln0765','279','ln0765-279-1_yqq1huh5ckwrnose',false,false),
('ln0765','279','ln0765-279-2_r9jcwb2baj6ss6fv',false,false),
('ln0765','279','ln0765-279-3_pbndildmwsy7333d',false,false),
('ln0765','279','ln0765-279-4_agccl15re59xazei',false,false),
('ln0765','279','ln0765-279-5_knyaqqhr0p78cjhu',false,false),
('ln0765','279','ln0765-279-6_xvkqfn4bt9j7bav7',false,false),
('ln0765','279','ln0765-279-7_qzcfazbwmapd1apk',false,false),
('ln1237','031','ln1237-031_fffkgqjdebfrh7oc',false,true),
('ln1237','031','ln1237-031-1_ypvjdf7r3xtc7hef',false,false),
('ln1237','031','ln1237-031-2_cn1s41b9felwcej9',false,false),
('ln1237','031','ln1237-031-3_kjilv5on6ssf9dzi',false,false),
('ln1237','031','ln1237-031-4_iutweyu41mdabssq',false,false),
('ln1237','014','ln1237-014_vekdsapdpk1urj0p',true,false),
('ln1237','014','ln1237-014-1_glqhkt5dzbudogau',false,false),
('ln1237','014','ln1237-014-2_widpsuvjkyttmmpu',false,false),
('ln1237','014','ln1237-014-3_mrhgljbqcui4xdoo',false,false),
('ln1237','014','ln1237-014-4_tqwtjcrwf0bd426k',false,false),
('ln1237','014','ln1237-014-5_0toupsi0wla8zpje',false,false),
('hy6136','031','hy6136-031_ygndxxbwlrm3sj9p',false,false),
('hy6136','031','hy6136-031-1_ulte513dqtwjaska',false,true),
('hy6136','031','hy6136-031-2_qv0x3f2gmaztgqif',false,false),
('hy6136','031','hy6136-031-3_1oaqfc5t9tehxjuv',false,false),
('hy6136','031','hy6136-031-4_mxbvukphe0rtrfxn',false,false),
('hy6136','251','hy6136-251_3oje1x4i27gonf6q',true,false),
('hy6136','251','hy6136-251-1_s4fwp0x4lalg4k0t',false,false),
('hy6136','251','hy6136-251-2_5goujyifogzgxfb7',false,false),
('hy6136','251','hy6136-251-3_fpdcjbkhbaf2wst7',false,false),
('hy6136','251','hy6136-251-4_nrlmmgtgf5tnkzh2',false,false),
('th1849','026','th1849-026_euydpxdgakhrjb7v',true,false),
('th1849','026','th1849-026-1_csyse96lrhqxczzb',false,false),
('th1849','026','th1849-026-2_dgmkptzcd5sbbpyy',false,false),
('th1849','026','th1849-026-3_kxhpdannncrmddgi',false,false),
('th1849','026','th1849-026-4_hsuc8m9bzwzbav91',false,false),
('th1849','026','th1849-026-5_liw40tkgvrvvun0v',false,false),
('th1849','156','th1849-156_egan7mwcp4ihcgfy',false,true),
('th1849','156','th1849-156-1_6on7yf2zfkue579x',false,false),
('th1849','156','th1849-156-2_g9qoa5jg1yqbsnm2',false,false),
('th1849','156','th1849-156-3_sfjmttvoplcmwtct',false,false),
('th1849','156','th1849-156-4_jxngs1ea5gabzqhz',false,false),
('ln0829','031','ln0829-031_p4nhm58mqcmuixux',true,false),
('ln0829','031','ln0829-031-1_1zuxrg46rzy59tm9',false,false),
('ln0829','031','ln0829-031-2_njg6mn1zxyswboab',false,false),
('ln0829','031','ln0829-031-3_bewvdnjzbywmzhxz',false,false),
('ln0829','031','ln0829-031-4_wzy797yekqqpe7h9',false,false),
('ln0829','052','ln0829-052_qbmtx1ehxuc7du1p',false,true),
('ln0829','052','ln0829-052-1_oiz9kmkmnhuoiyka',false,false),
('ln0829','052','ln0829-052-2_blsoc3dyb3mxnryj',false,false),
('ln0829','052','ln0829-052-3_hitrow0elz1meeqi',false,false),
('ln0829','052','ln0829-052-4_9j9nqblihakzmxrl',false,false)


-- Product Price
INSERT INTO "product_price" ("id", "product_code", "currency", "price")
VALUES (1, 'hy5532', 'SGD', 45),
(2, 'ln1278', 'SGD', 48),
(3, 'ln0738', 'SGD', 67),
(4, 'ln0922', 'SGD', 38),
(5, 'th2266', 'SGD', 49),
(6, 'hy5956', 'SGD', 36),
(7, 'hy6033', 'SGD', 45),
(8, 'ln0826', 'SGD', 48),
(9, 'ln0822', 'SGD', 67),
(10, 'ln0878', 'SGD', 38),
(11, 'hy5866', 'SGD', 49),
(12, 'th1443', 'SGD', 36),
(13, 'hy6144', 'SGD', 45),
(14, 'th2555', 'SGD', 48),
(15, 'th2628', 'SGD', 67),
(16, 'ln0765', 'SGD', 38),
(17, 'ln1237', 'SGD', 49),
(18, 'hy6136', 'SGD', 36),
(19, 'th1849', 'SGD', 47),
(20, 'ln0829', 'SGD', 48)

-- Product Transaction
INSERT INTO "product_transaction" ("product_code", "product_size", "product_color", "location", "transaction_date", "origin_type", "origin_id", "quantity", "direction")
VALUES ('hy5532', 'xs', '043', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('hy5532', 'xs', '031', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('hy5532', 'xs', '014', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln1278', 'xs', '031', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln1278', 'xs', '026', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0738', 'xs', '031', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0738', 'xs', '014', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0738', 'xs', '036', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0738', 'xs', '093', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0922', 'xs', '035', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0922', 'xs', '410', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('th2266', 'xs', '031', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('th2266', 'xs', '014', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('th2266', 'xs', '030', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('hy5956', 'xs', '021', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('hy5956', 'xs', '169', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('hy5956', 'xs', '146', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('hy6033', 'xs', '031', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('hy6033', 'xs', '275', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0826', 'xs', '031', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0826', 'xs', '052', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0822', 'xs', '035', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0822', 'xs', '410', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0878', 'xs', '031', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0878', 'xs', '417', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('hy5866', 'xs', '031', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('hy5866', 'xs', '156', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('th1443', 'xs', '031', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('th1443', 'xs', '014', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('th1443', 'xs', '347', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('hy6144', 'xs', '124', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('hy6144', 'xs', '149', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('th2555', 'xs', '031', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('th2555', 'xs', '014', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('th2628', 'xs', '031', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('th2628', 'xs', '014', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('th2628', 'xs', '277', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0765', 'xs', '031', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0765', 'xs', '014', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0765', 'xs', '279', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln1237', 'xs', '031', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln1237', 'xs', '014', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('hy6136', 'xs', '031', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('hy6136', 'xs', '251', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('th1849', 'xs', '026', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('th1849', 'xs', '156', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0829', 'xs', '031', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0829', 'xs', '052', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('hy5532', 's', '043', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('hy5532', 's', '031', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('hy5532', 's', '014', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln1278', 's', '031', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln1278', 's', '026', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0738', 's', '031', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0738', 's', '014', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0738', 's', '036', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0738', 's', '093', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0922', 's', '035', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0922', 's', '410', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('th2266', 's', '031', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('th2266', 's', '014', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('th2266', 's', '030', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('hy5956', 's', '021', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('hy5956', 's', '169', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('hy5956', 's', '146', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('hy6033', 's', '031', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('hy6033', 's', '275', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0826', 's', '031', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0826', 's', '052', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0822', 's', '035', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0822', 's', '410', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0878', 's', '031', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0878', 's', '417', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('hy5866', 's', '031', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('hy5866', 's', '156', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('th1443', 's', '031', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('th1443', 's', '014', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('th1443', 's', '347', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('hy6144', 's', '124', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('hy6144', 's', '149', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('th2555', 's', '031', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('th2555', 's', '014', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('th2628', 's', '031', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('th2628', 's', '014', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('th2628', 's', '277', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0765', 's', '031', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0765', 's', '014', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0765', 's', '279', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln1237', 's', '031', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln1237', 's', '014', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('hy6136', 's', '031', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('hy6136', 's', '251', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('th1849', 's', '026', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('th1849', 's', '156', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0829', 's', '031', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('ln0829', 's', '052', 'EC', '2023-01-15', 'OB',1, 10, 'I'),
('hy5532', 'm', '043', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('hy5532', 'm', '031', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('hy5532', 'm', '014', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('ln1278', 'm', '031', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('ln1278', 'm', '026', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('ln0738', 'm', '031', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('ln0738', 'm', '014', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('ln0738', 'm', '036', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('ln0738', 'm', '093', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('ln0922', 'm', '035', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('ln0922', 'm', '410', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('th2266', 'm', '031', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('th2266', 'm', '014', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('th2266', 'm', '030', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('hy5956', 'm', '021', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('hy5956', 'm', '169', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('hy5956', 'm', '146', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('hy6033', 'm', '031', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('hy6033', 'm', '275', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('ln0826', 'm', '031', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('ln0826', 'm', '052', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('ln0822', 'm', '035', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('ln0822', 'm', '410', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('ln0878', 'm', '031', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('ln0878', 'm', '417', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('hy5866', 'm', '031', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('hy5866', 'm', '156', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('th1443', 'm', '031', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('th1443', 'm', '014', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('th1443', 'm', '347', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('hy6144', 'm', '124', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('hy6144', 'm', '149', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('th2555', 'm', '031', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('th2555', 'm', '014', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('th2628', 'm', '031', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('th2628', 'm', '014', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('th2628', 'm', '277', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('ln0765', 'm', '031', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('ln0765', 'm', '014', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('ln0765', 'm', '279', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('ln1237', 'm', '031', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('ln1237', 'm', '014', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('hy6136', 'm', '031', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('hy6136', 'm', '251', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('th1849', 'm', '026', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('th1849', 'm', '156', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('ln0829', 'm', '031', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('ln0829', 'm', '052', 'EC', '2023-01-15', 'OB',1, 15, 'I'),
('hy5532', 'l', '043', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('hy5532', 'l', '031', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('hy5532', 'l', '014', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln1278', 'l', '031', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln1278', 'l', '026', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln0738', 'l', '031', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln0738', 'l', '014', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln0738', 'l', '036', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln0738', 'l', '093', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln0922', 'l', '035', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln0922', 'l', '410', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('th2266', 'l', '031', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('th2266', 'l', '014', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('th2266', 'l', '030', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('hy5956', 'l', '021', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('hy5956', 'l', '169', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('hy5956', 'l', '146', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('hy6033', 'l', '031', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('hy6033', 'l', '275', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln0826', 'l', '031', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln0826', 'l', '052', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln0822', 'l', '035', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln0822', 'l', '410', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln0878', 'l', '031', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln0878', 'l', '417', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('hy5866', 'l', '031', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('hy5866', 'l', '156', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('th1443', 'l', '031', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('th1443', 'l', '014', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('th1443', 'l', '347', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('hy6144', 'l', '124', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('hy6144', 'l', '149', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('th2555', 'l', '031', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('th2555', 'l', '014', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('th2628', 'l', '031', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('th2628', 'l', '014', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('th2628', 'l', '277', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln0765', 'l', '031', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln0765', 'l', '014', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln0765', 'l', '279', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln1237', 'l', '031', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln1237', 'l', '014', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('hy6136', 'l', '031', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('hy6136', 'l', '251', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('th1849', 'l', '026', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('th1849', 'l', '156', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln0829', 'l', '031', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln0829', 'l', '052', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('hy5532', 'xl', '043', 'EC', '2023-01-15', 'OB',1, 0, 'I'),
('hy5532', 'xl', '031', 'EC', '2023-01-15', 'OB',1, 0, 'I'),
('hy5532', 'xl', '014', 'EC', '2023-01-15', 'OB',1, 0, 'I'),
('ln1278', 'xl', '031', 'EC', '2023-01-15', 'OB',1, 0, 'I'),
('ln1278', 'xl', '026', 'EC', '2023-01-15', 'OB',1, 0, 'I'),
('ln0738', 'xl', '031', 'EC', '2023-01-15', 'OB',1, 0, 'I'),
('ln0738', 'xl', '014', 'EC', '2023-01-15', 'OB',1, 0, 'I'),
('ln0738', 'xl', '036', 'EC', '2023-01-15', 'OB',1, 0, 'I'),
('ln0738', 'xl', '093', 'EC', '2023-01-15', 'OB',1, 0, 'I'),
('ln0922', 'xl', '035', 'EC', '2023-01-15', 'OB',1, 0, 'I'),
('ln0922', 'xl', '410', 'EC', '2023-01-15', 'OB',1, 0, 'I'),
('th2266', 'xl', '031', 'EC', '2023-01-15', 'OB',1, 0, 'I'),
('th2266', 'xl', '014', 'EC', '2023-01-15', 'OB',1, 0, 'I'),
('th2266', 'xl', '030', 'EC', '2023-01-15', 'OB',1, 0, 'I'),
('hy5956', 'xl', '021', 'EC', '2023-01-15', 'OB',1, 0, 'I'),
('hy5956', 'xl', '169', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('hy5956', 'xl', '146', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('hy6033', 'xl', '031', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('hy6033', 'xl', '275', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln0826', 'xl', '031', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln0826', 'xl', '052', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln0822', 'xl', '035', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln0822', 'xl', '410', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln0878', 'xl', '031', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln0878', 'xl', '417', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('hy5866', 'xl', '031', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('hy5866', 'xl', '156', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('th1443', 'xl', '031', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('th1443', 'xl', '014', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('th1443', 'xl', '347', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('hy6144', 'xl', '124', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('hy6144', 'xl', '149', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('th2555', 'xl', '031', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('th2555', 'xl', '014', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('th2628', 'xl', '031', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('th2628', 'xl', '014', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('th2628', 'xl', '277', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln0765', 'xl', '031', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln0765', 'xl', '014', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln0765', 'xl', '279', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln1237', 'xl', '031', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln1237', 'xl', '014', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('hy6136', 'xl', '031', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('hy6136', 'xl', '251', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('th1849', 'xl', '026', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('th1849', 'xl', '156', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln0829', 'xl', '031', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('ln0829', 'xl', '052', 'EC', '2023-01-15', 'OB',1, 5, 'I'),
('hy5532', 'xs', '031', 'EC', '2023-01-15', 'OB',2, -5, 'O'),
('hy5532', 'xs', '014', 'EC', '2023-01-15', 'OB',2, -5, 'O'),
('ln1278', 'xs', '031', 'EC', '2023-01-15', 'OB',2, -5, 'O'),
('ln1278', 'xs', '026', 'EC', '2023-01-15', 'OB',2, -5, 'O'),
('ln0738', 'xs', '031', 'EC', '2023-01-15', 'OB',2, -5, 'O'),
('ln0738', 'xs', '014', 'EC', '2023-01-15', 'OB',2, -5, 'O'),
('ln0738', 'xs', '036', 'EC', '2023-01-15', 'OB',2, -5, 'O'),
('ln0738', 'xs', '093', 'EC', '2023-01-15', 'OB',2, -5, 'O'),
('hy5532', 'xs', '043', 'EC', '2023-01-15', 'OB',3, -5, 'O')
