class ApplicationController < ActionController::Base
  helper_method :logged_in? # コントローラとビューの両方から利用するのでhelper_methodで宣言

  private

  def logged_in?
    !!session[:user_id] # not演算子を２つ重ねることで、session[:user_id]がfalseまたはnilの時はfalseを、それ以外はtrueへ変換
  end
end
