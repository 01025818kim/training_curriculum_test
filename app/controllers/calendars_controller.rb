class CalendarsController < ApplicationController

  # １週間のカレンダーと予定が表示されるページ
  def index
<<<<<<< HEAD
    get_Week
=======
    get_week
>>>>>>> beb79ae9c607335476c7b6c488fa3b8eae979ad6
    @plan = Plan.new
  end

  # 予定の保存
  def create
    Plan.create(plan_params)
    redirect_to action: :index
  end

  private

  def plan_params
    params.require(:plan).permit(:date, :plan)
  end

<<<<<<< HEAD
  def get_Week
=======
  def get_week
>>>>>>> beb79ae9c607335476c7b6c488fa3b8eae979ad6
    wdays = ['(日)','(月)','(火)','(水)','(木)','(金)','(土)']

    # Dateオブジェクトは、日付を保持しています。下記のように`.today.day`とすると、今日の日付を取得できます。
    @todays_date = Date.today
    # 例)　今日が2月1日の場合・・・ Date.today.day => 1日

    @week_days = []

    plans = Plan.where(date: @todays_date..@todays_date + 6)

    7.times do |x|
      today_plans = []
      plan = plans.map do |plan|
        today_plans.push(plan.plan) if plan.date == @todays_date + x
      end

<<<<<<< HEAD
      days = { month: (@todays_date + x).month, date: (@todays_date+x).day, plans: today_plans, wday: wdays[(@todays_date+x).wday] }

=======

      wday_num = []
      if wday_num > 6
        wday_num = wday_num -7
      end

      days = { :month => (@todays_date + x).month, :date => (@todays_date+x).day, :plans => today_plans :wdays => wday_num}

>>>>>>> beb79ae9c607335476c7b6c488fa3b8eae979ad6
      @week_days.push(days)
    end
  end
<<<<<<< HEAD
end
=======
end
      
>>>>>>> beb79ae9c607335476c7b6c488fa3b8eae979ad6
