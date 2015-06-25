FactoryGirl.define do

  #Article

  factory :article do
    title "Factory Data"
    text  "Data Create From Factory"

    factory :article_with_comment do
      after(:create) do |article|
        create(:comment, article: article)
      end
    end
  end

  factory :comment do
    commenter "first comment"
    body "Great article!"
  end

  #Article With Comment

  factory :my_article, class: Article do
    title "My Factory Data"
    text  "My Data Create From Factory"

    factory :my_article_with_comment do
      after(:create) do |article|
        create(:my_comment1, article: article)
        create(:my_comment2, article: article)
      end
    end
  end

  factory :my_comment1, class: Comment do
    commenter "My first comment"
    body "My Great article!"
  end

  factory :my_comment2, class: Comment do
    commenter "My second comment"
    body "My Great article 2!"
  end

  #Article With Detail

  factory :my_article3, class: Article do
    title "My Factory Data With Detail"
    text  "My Data Create From Factory"

    factory :my_article_with_comment_detail do
      after(:create) do |article|
        #detail1 = FactoryGirl.build(:detail)
        #detail2 = FactoryGirl.build(:detail)

        #FactoryGirl.create(:comment, article:article, detail: detail1)
        #FactoryGirl.create(:comment, article:article, detail: detail2)

        article.details << FactoryGirl.build(:detail)

      end
    end
  end

  factory :detail do
    content "Detail!!"
    comment
  end


end
