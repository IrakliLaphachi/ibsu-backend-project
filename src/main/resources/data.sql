-- Categories
INSERT IGNORE INTO categories (name, description) VALUES ('zetisxili', 'ზეთისხილები');
INSERT IGNORE INTO categories (name, description) VALUES ('nekerchxali', 'ნეკერჩხლები');
INSERT IGNORE INTO categories (name, description) VALUES ('xviara-mcenareebi', 'ხვიარა მცენარეები');
INSERT IGNORE INTO categories (name, description) VALUES ('fotlovani-buchqebi', 'ფოთლოვანი ბუჩქები');
INSERT IGNORE INTO categories (name, description) VALUES ('wiwvovani', 'წიწვოვანი');
INSERT IGNORE INTO categories (name, description) VALUES ('sabordiule-qartuli', 'სასაბორდიულე ქართული');
INSERT IGNORE INTO categories (name, description) VALUES ('sabordiule-evropuli', 'სასაბორდიულე ევროპული');
INSERT IGNORE INTO categories (name, description) VALUES ('yvavilebi', 'ყვავილები');
INSERT IGNORE INTO categories (name, description) VALUES ('balaxovani', 'ბალახოვანი');

-- Products (price in GEL, stock between 10-100)
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ზეთისხილი', 'zetisxili', 120.00, 45, (SELECT id FROM categories WHERE name = 'zetisxili'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ზეთისხილი შტამზე', 'zetisxiliShtamze', 195.00, 20, (SELECT id FROM categories WHERE name = 'zetisxili'));

INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ნეკერჩხალი emerald lace', 'emeraldLace', 85.00, 30, (SELECT id FROM categories WHERE name = 'nekerchxali'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ნეკერჩხალი krimson queen', 'krimsonQueen', 90.00, 25, (SELECT id FROM categories WHERE name = 'nekerchxali'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ნეკერჩხალი moonrise', 'moonrise', 95.00, 18, (SELECT id FROM categories WHERE name = 'nekerchxali'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ნეკერჩხალი osazuki', 'osazuki', 100.00, 22, (SELECT id FROM categories WHERE name = 'nekerchxali'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ნეკერჩხალი sango kaku', 'sangoKaku', 88.00, 15, (SELECT id FROM categories WHERE name = 'nekerchxali'));

INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('პართენოცისუსი', 'partenocisusi', 35.00, 60, (SELECT id FROM categories WHERE name = 'xviara-mcenareebi'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ჟასმინი', 'jasmine123', 28.00, 75, (SELECT id FROM categories WHERE name = 'xviara-mcenareebi'));

INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ბზა', 'bza', 22.00, 80, (SELECT id FROM categories WHERE name = 'fotlovani-buchqebi'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ფშატი', 'fshati', 45.00, 35, (SELECT id FROM categories WHERE name = 'fotlovani-buchqebi'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ირმის რქა', 'irmisRka', 55.00, 28, (SELECT id FROM categories WHERE name = 'fotlovani-buchqebi'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ოლიანდრა', 'oliandra', 38.00, 42, (SELECT id FROM categories WHERE name = 'fotlovani-buchqebi'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('აბელია grandiflora', 'abelia', 32.00, 50, (SELECT id FROM categories WHERE name = 'fotlovani-buchqebi'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ბამბუკი', 'bambuki', 65.00, 20, (SELECT id FROM categories WHERE name = 'fotlovani-buchqebi'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ლოროპეტალუმი', 'lorepetalum', 42.00, 33, (SELECT id FROM categories WHERE name = 'fotlovani-buchqebi'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ნანდინა firepower', 'firepower', 36.00, 45, (SELECT id FROM categories WHERE name = 'fotlovani-buchqebi'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ნანდინა დომესტიკა', 'domestica', 40.00, 38, (SELECT id FROM categories WHERE name = 'fotlovani-buchqebi'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ფიტოსპორუმი', 'fitosporium', 30.00, 55, (SELECT id FROM categories WHERE name = 'fotlovani-buchqebi'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ფოტინია', 'fotinia', 48.00, 30, (SELECT id FROM categories WHERE name = 'fotlovani-buchqebi'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ჭანჭყატი', 'chanchyati', 25.00, 70, (SELECT id FROM categories WHERE name = 'fotlovani-buchqebi'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('კალისტემონი', 'kalistemoni', 52.00, 25, (SELECT id FROM categories WHERE name = 'fotlovani-buchqebi'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('მარწყვის ხე Arbutus', 'arbutus', 75.00, 18, (SELECT id FROM categories WHERE name = 'fotlovani-buchqebi'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('მაგნოლია', 'magnolia', 110.00, 15, (SELECT id FROM categories WHERE name = 'fotlovani-buchqebi'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('დეკორატიული შინდი (წითელი)', 'shindi1', 58.00, 22, (SELECT id FROM categories WHERE name = 'fotlovani-buchqebi'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('დეკორატიული შინდი (ყვითელი)', 'shindi2', 58.00, 22, (SELECT id FROM categories WHERE name = 'fotlovani-buchqebi'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ფოტინია შტამზე', 'fotiniaShtamze', 72.00, 16, (SELECT id FROM categories WHERE name = 'fotlovani-buchqebi'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('კოტონვასტერი', 'kotonvasteri', 28.00, 60, (SELECT id FROM categories WHERE name = 'fotlovani-buchqebi'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ილექსი', 'ilexi', 35.00, 48, (SELECT id FROM categories WHERE name = 'fotlovani-buchqebi'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('მაგნოლია სულაჟეანა', 'soulangeana', 125.00, 12, (SELECT id FROM categories WHERE name = 'fotlovani-buchqebi'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ლიგუსტრუმი', 'ligustrumi', 20.00, 90, (SELECT id FROM categories WHERE name = 'fotlovani-buchqebi'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ოსმანთუსი', 'osmantusi', 44.00, 32, (SELECT id FROM categories WHERE name = 'fotlovani-buchqebi'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ჩიტავაშლა', 'chitavashla', 50.00, 28, (SELECT id FROM categories WHERE name = 'fotlovani-buchqebi'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('დაფნა', 'dafna', 33.00, 55, (SELECT id FROM categories WHERE name = 'fotlovani-buchqebi'));

INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('კავკასიური სოჭი', 'sochi', 80.00, 25, (SELECT id FROM categories WHERE name = 'wiwvovani'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('კედარი პენდულა', 'kedari', 145.00, 10, (SELECT id FROM categories WHERE name = 'wiwvovani'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('უთხოვარი', 'utxovari', 55.00, 35, (SELECT id FROM categories WHERE name = 'wiwvovani'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ღვია ვირჯინია', 'virginia', 60.00, 30, (SELECT id FROM categories WHERE name = 'wiwvovani'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ღვია მინტ ჯულეპ', 'mintJulep', 62.00, 28, (SELECT id FROM categories WHERE name = 'wiwvovani'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ლეილანდის პომპომი', 'leiland', 90.00, 20, (SELECT id FROM categories WHERE name = 'wiwvovani'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('არიზონიკას პომპომი', 'arizonika', 85.00, 22, (SELECT id FROM categories WHERE name = 'wiwvovani'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ლიბოცედრუსი', 'libocedrus', 70.00, 18, (SELECT id FROM categories WHERE name = 'wiwvovani'));

INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('კვიპაროსი', 'kviparosi', 75.00, 30, (SELECT id FROM categories WHERE name = 'sabordiule-qartuli'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ქართული ტუია', 'geoTuia', 65.00, 40, (SELECT id FROM categories WHERE name = 'sabordiule-qartuli'));

INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('კუპრესოს არიზონიკა', 'kupreso', 70.00, 35, (SELECT id FROM categories WHERE name = 'sabordiule-evropuli'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('კუპრესოს გოლდრაიდერ', 'goldraideri', 78.00, 25, (SELECT id FROM categories WHERE name = 'sabordiule-evropuli'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ტუია', 'tuia', 55.00, 50, (SELECT id FROM categories WHERE name = 'sabordiule-evropuli'));

INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ვარდი', 'vardi', 18.00, 100, (SELECT id FROM categories WHERE name = 'yvavilebi'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('იასამანი', 'iasamani', 45.00, 40, (SELECT id FROM categories WHERE name = 'yvavilebi'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ხვიარა ვარდი', 'xviaraVardi', 22.00, 65, (SELECT id FROM categories WHERE name = 'yvavilebi'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('აზალია', 'azalea', 35.00, 45, (SELECT id FROM categories WHERE name = 'yvavilebi'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ვარდი შტამზე', 'vardiShtamze', 55.00, 20, (SELECT id FROM categories WHERE name = 'yvavilebi'));

INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('სტიპა', 'stipa', 15.00, 90, (SELECT id FROM categories WHERE name = 'balaxovani'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ფესტუკა', 'festuka', 12.00, 100, (SELECT id FROM categories WHERE name = 'balaxovani'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ოფიოფოგონი', 'ofiofogoni', 14.00, 85, (SELECT id FROM categories WHERE name = 'balaxovani'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ლონიცერა', 'lonicera', 20.00, 70, (SELECT id FROM categories WHERE name = 'balaxovani'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('ლავანდა', 'lavender', 16.00, 95, (SELECT id FROM categories WHERE name = 'balaxovani'));
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id) VALUES ('როზმარინი', 'rosemary', 18.00, 80, (SELECT id FROM categories WHERE name = 'balaxovani'));
