# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130627194637) do

  create_table "_temp_ms83_registro", :primary_key => "id_temp_ms83_registro", :force => true do |t|
    t.string "rec_email", :limit => 45
  end

  create_table "_temp_user_id", :force => true do |t|
    t.string  "email",   :null => false
    t.integer "user_id"
  end

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "active_admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "active_admin_users", ["email"], :name => "index_active_admin_users_on_email", :unique => true
  add_index "active_admin_users", ["reset_password_token"], :name => "index_active_admin_users_on_reset_password_token", :unique => true

  create_table "active_administrators", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "active_administrators", ["email"], :name => "index_active_administrators_on_email", :unique => true
  add_index "active_administrators", ["reset_password_token"], :name => "index_active_administrators_on_reset_password_token", :unique => true

  create_table "admin_users", :primary_key => "user_id", :force => true do |t|
    t.string   "user_email",                    :default => "", :null => false
    t.string   "user_pass",       :limit => 60, :default => "", :null => false
    t.datetime "user_date",                                     :null => false
    t.datetime "user_modified",                                 :null => false
    t.datetime "user_last_login"
  end

  add_index "admin_users", ["user_email"], :name => "user_email", :unique => true

  create_table "answers", :primary_key => "aid", :force => true do |t|
    t.integer "qid",                      :null => false
    t.string  "code",      :limit => 5,   :null => false
    t.string  "answer",    :limit => 80,  :null => false
    t.string  "answer_pt", :limit => 125
    t.integer "order",     :limit => 1,   :null => false
  end

  create_table "autos_sv", :id => false, :force => true do |t|
    t.string "ID"
    t.string "TOKEN"
    t.string "MARCA/MODELO"
    t.string "SILUETA"
    t.string "F5"
    t.string "F6"
    t.string "F7"
  end

  create_table "ci_sessions", :primary_key => "session_id", :force => true do |t|
    t.string  "ip_address",    :limit => 16,  :default => "0", :null => false
    t.string  "user_agent",    :limit => 150,                  :null => false
    t.integer "last_activity",                :default => 0,   :null => false
    t.text    "user_data",                                     :null => false
  end

  create_table "city", :id => false, :force => true do |t|
    t.string  "name",         :limit => 100, :null => false
    t.string  "country_code", :limit => 3,   :null => false
    t.string  "district",     :limit => 20,  :null => false
    t.integer "ord",                         :null => false
  end

  create_table "cliente", :primary_key => "id_cliente", :force => true do |t|
    t.string "cli_nombre",   :limit => 80, :null => false
    t.string "cli_contacto", :limit => 80, :null => false
    t.string "cli_email",    :limit => 80, :null => false
    t.string "cli_password",               :null => false
  end

  create_table "condicion", :primary_key => "id_condicion", :force => true do |t|
    t.integer "id_proyecto",                   :null => false
    t.text    "descripcion",                   :null => false
    t.text    "sql",                           :null => false
    t.integer "id_condicion_r",                :null => false
    t.integer "cant_requerida",                :null => false
    t.integer "cant_muestra",                  :null => false
    t.integer "cant_completa",  :default => 0, :null => false
    t.integer "cant_filtro",    :default => 0, :null => false
  end

  create_table "condicion_r", :primary_key => "id_condicion_r", :force => true do |t|
    t.integer "id_condicion",  :null => false
    t.text    "sql",           :null => false
    t.text    "descripcion",   :null => false
    t.integer "cant_muestra",  :null => false
    t.integer "cant_completa", :null => false
    t.integer "cant_filtro",   :null => false
  end

  create_table "conditions", :primary_key => "cid", :force => true do |t|
    t.integer "sid", :null => false
    t.integer "qid", :null => false
    t.integer "aid", :null => false
  end

  create_table "country", :primary_key => "code", :force => true do |t|
    t.string "name", :limit => 52, :null => false
  end

  create_table "email_vinculos", :primary_key => "email", :force => true do |t|
  end

  create_table "login_attempts", :force => true do |t|
    t.string   "ip_address", :limit => 40, :null => false
    t.datetime "time",                     :null => false
  end

  create_table "old_answers", :primary_key => "aid", :force => true do |t|
    t.integer "qid",                  :null => false
    t.string  "code",   :limit => 5,  :null => false
    t.string  "answer", :limit => 80, :null => false
    t.integer "order",  :limit => 1,  :null => false
  end

  create_table "old_profile", :primary_key => "sid", :force => true do |t|
    t.string  "title",  :limit => 50, :null => false
    t.boolean "active",               :null => false
  end

  create_table "old_questions", :primary_key => "qid", :force => true do |t|
    t.integer "sid",                                       :null => false
    t.string  "type",     :limit => 1,                     :null => false
    t.string  "code",     :limit => 10,                    :null => false
    t.text    "question",                                  :null => false
    t.boolean "required",               :default => false, :null => false
    t.boolean "has_cond",               :default => false, :null => false
    t.integer "parent",                 :default => 0,     :null => false
    t.integer "order",    :limit => 1,                     :null => false
    t.string  "notes",                                     :null => false
  end

  create_table "panelista_encuesta", :primary_key => "id_panelista_encuesta", :force => true do |t|
    t.integer  "user_id",                                       :null => false
    t.integer  "id_proyecto",                                   :null => false
    t.integer  "id_condicion",                                  :null => false
    t.integer  "id_condicion_r",                                :null => false
    t.integer  "id_panelista_encuesta_estado",                  :null => false
    t.datetime "fecha_muestreo",                                :null => false
    t.datetime "fecha_panelista_encuesta_estado",               :null => false
    t.text     "enc_url",                                       :null => false
    t.integer  "cant_envios",                                   :null => false
    t.datetime "ult_envio",                                     :null => false
    t.string   "session_id",                      :limit => 50, :null => false
  end

  create_table "panelista_encuesta_estado", :primary_key => "id_panelista_encuesta_estado", :force => true do |t|
    t.string "panelista_encuesta_estado", :limit => 50, :null => false
  end

  create_table "permissions", :force => true do |t|
    t.integer "role_id", :null => false
    t.text    "data"
  end

  create_table "pre_quest", :primary_key => "id_pre_quest", :force => true do |t|
    t.string   "user_id",   :limit => 100, :null => false
    t.string   "pre_quest", :limit => 100, :null => false
    t.datetime "created"
    t.string   "extra1",    :limit => 50
    t.string   "extra2",    :limit => 50
    t.string   "extra3",    :limit => 50
    t.string   "extra4",    :limit => 50
    t.string   "extra5",    :limit => 50
  end

  create_table "profile", :primary_key => "sid", :force => true do |t|
    t.string  "title",    :limit => 50, :null => false
    t.string  "title_pt", :limit => 50
    t.boolean "active",                 :null => false
  end

  create_table "proy_estado", :primary_key => "id_proy_estado", :force => true do |t|
    t.string "proy_estado", :limit => 50, :null => false
  end

  create_table "proy_landing", :primary_key => "proy_id", :force => true do |t|
    t.integer  "has_condition",    :limit => 1,   :default => 0, :null => false
    t.integer  "active",           :limit => 1,   :default => 0, :null => false
    t.string   "description",      :limit => 100
    t.integer  "template_landing", :limit => 1
    t.integer  "template_ending",  :limit => 1
    t.integer  "template_bases",   :limit => 1
    t.integer  "template_mailing", :limit => 1
    t.string   "alert_email",      :limit => 150
    t.integer  "alert_url",        :limit => 1
    t.datetime "alert_date"
    t.integer  "url_count_free"
    t.integer  "url_count"
    t.datetime "url_count_date"
  end

  create_table "proy_landing_condition", :primary_key => "id_proy_landing_condition", :force => true do |t|
    t.integer "proy_id",                                  :null => false
    t.string  "field",      :limit => 100,                :null => false
    t.string  "value",      :limit => 512
    t.integer "pass",       :limit => 1,   :default => 1, :null => false
    t.string  "comparison", :limit => 2
  end

  create_table "proy_template", :primary_key => "proy_template_id", :force => true do |t|
    t.integer "proy_id",                                       :null => false
    t.string  "template_folder",                               :null => false
    t.string  "lan_country",     :limit => 5,                  :null => false
    t.string  "lan_titulo",      :limit => 100,                :null => false
    t.string  "lan_premio_txt",  :limit => 100,                :null => false
    t.string  "lan_premio_img",                                :null => false
    t.integer "lan_duracion",                   :default => 0, :null => false
    t.text    "end_completed",                                 :null => false
    t.text    "end_out",                                       :null => false
    t.text    "bases",                                         :null => false
  end

  create_table "proyecto", :primary_key => "id_proyecto", :force => true do |t|
    t.integer  "id_cliente",                   :null => false
    t.text     "descripcion",                  :null => false
    t.datetime "fecha_alta",                   :null => false
    t.datetime "fecha_comienzo",               :null => false
    t.datetime "fecha_fin",                    :null => false
    t.integer  "id_usr_created",               :null => false
    t.integer  "id_proy_estado",               :null => false
    t.string   "web_descripcion",              :null => false
    t.integer  "web_duracion",    :limit => 1, :null => false
  end

  create_table "proyecto_status", :primary_key => "id_proyecto_status", :force => true do |t|
    t.integer  "id_proyecto",                              :null => false
    t.integer  "id_url",                                   :null => false
    t.string   "rec_email"
    t.integer  "source",      :limit => 2,                 :null => false
    t.integer  "token"
    t.integer  "status",      :limit => 1,                 :null => false
    t.datetime "time",                                     :null => false
    t.string   "ip",          :limit => 50
    t.string   "country",     :limit => 50
    t.string   "district",    :limit => 50
    t.string   "city",        :limit => 50
    t.integer  "survey",      :limit => 1,  :default => 0
  end

  add_index "proyecto_status", ["id_proyecto"], :name => "id_proyecto"
  add_index "proyecto_status", ["id_url"], :name => "id_url_p_status"
  add_index "proyecto_status", ["rec_email"], :name => "email_p_status"

  create_table "proyecto_status_2011_11_14", :primary_key => "id_proyecto_status", :force => true do |t|
    t.integer  "id_proyecto",              :null => false
    t.integer  "id_url",                   :null => false
    t.string   "rec_email"
    t.integer  "source",      :limit => 1, :null => false
    t.integer  "token"
    t.integer  "status",      :limit => 1, :null => false
    t.datetime "time",                     :null => false
  end

  create_table "questions", :primary_key => "qid", :force => true do |t|
    t.integer "sid",                                          :null => false
    t.string  "type",        :limit => 1,                     :null => false
    t.string  "code",        :limit => 10,                    :null => false
    t.text    "question",                                     :null => false
    t.text    "question_pt"
    t.boolean "required",                  :default => false, :null => false
    t.boolean "has_cond",                  :default => false, :null => false
    t.integer "parent",                    :default => 0,     :null => false
    t.integer "order",       :limit => 1,                     :null => false
    t.string  "notes",                                        :null => false
  end

  create_table "results-survey93548", :primary_key => "email", :force => true do |t|
  end

  create_table "roles", :force => true do |t|
    t.integer "parent_id",               :default => 0, :null => false
    t.string  "name",      :limit => 30,                :null => false
  end

  create_table "step", :primary_key => "stepid", :force => true do |t|
    t.integer  "visitid",                 :null => false
    t.datetime "stepdate",                :null => false
    t.string   "stepname", :limit => 60,  :null => false
    t.string   "stepdata", :limit => 100
  end

  create_table "survey", :force => true do |t|
    t.integer "user_id",               :null => false
    t.string  "Q1",      :limit => 20, :null => false
    t.string  "Q2",      :limit => 20, :null => false
    t.string  "Q3",      :limit => 20, :null => false
    t.string  "Q4",      :limit => 20, :null => false
    t.string  "Q5",      :limit => 20, :null => false
    t.string  "Q6",      :limit => 20, :null => false
    t.string  "Q7",      :limit => 20, :null => false
    t.string  "Q8",      :limit => 20, :null => false
    t.string  "Q9",      :limit => 20, :null => false
    t.string  "Q10",     :limit => 20, :null => false
    t.string  "Q11",     :limit => 20, :null => false
    t.string  "Q12",     :limit => 20, :null => false
    t.string  "Q13",     :limit => 20, :null => false
    t.string  "Q14",     :limit => 20, :null => false
    t.string  "Q15",     :limit => 20, :null => false
    t.string  "Q16",     :limit => 20, :null => false
    t.string  "Q17",     :limit => 20, :null => false
    t.string  "Q18",     :limit => 20, :null => false
    t.string  "Q19",     :limit => 20, :null => false
    t.string  "Q20",     :limit => 20, :null => false
    t.string  "Q21",     :limit => 20, :null => false
    t.string  "Q22",     :limit => 20, :null => false
    t.string  "Q23",     :limit => 20, :null => false
    t.string  "Q24",     :limit => 20, :null => false
    t.string  "Q25",     :limit => 20, :null => false
    t.string  "Q26",     :limit => 20, :null => false
    t.string  "Q27",     :limit => 20, :null => false
    t.string  "Q28",     :limit => 20, :null => false
    t.string  "Q29",     :limit => 20, :null => false
    t.string  "Q30",     :limit => 20, :null => false
    t.string  "Q31",     :limit => 20, :null => false
    t.string  "Q32",     :limit => 20, :null => false
    t.string  "Q33",     :limit => 20, :null => false
    t.string  "Q34",     :limit => 20, :null => false
    t.string  "Q35",     :limit => 20, :null => false
    t.string  "Q36",     :limit => 20, :null => false
    t.string  "Q37",     :limit => 20, :null => false
    t.string  "Q38",     :limit => 20, :null => false
    t.string  "Q39",     :limit => 20, :null => false
    t.string  "Q40",     :limit => 20, :null => false
    t.string  "Q41",     :limit => 20, :null => false
    t.string  "Q42",     :limit => 20, :null => false
    t.string  "Q43",     :limit => 20, :null => false
    t.string  "Q44",     :limit => 20, :null => false
    t.string  "Q45",     :limit => 20, :null => false
    t.string  "Q46",     :limit => 20, :null => false
    t.string  "Q47",     :limit => 20, :null => false
    t.string  "Q48",     :limit => 20, :null => false
    t.string  "Q49",     :limit => 20, :null => false
    t.string  "Q50",     :limit => 20, :null => false
    t.string  "Q51",     :limit => 20, :null => false
    t.string  "Q52",     :limit => 20, :null => false
    t.string  "Q53",     :limit => 20, :null => false
    t.string  "Q54",     :limit => 20, :null => false
    t.string  "Q55",     :limit => 20, :null => false
    t.string  "Q56",     :limit => 20, :null => false
    t.string  "Q57",     :limit => 20, :null => false
    t.string  "Q58",     :limit => 20, :null => false
    t.string  "Q59",     :limit => 20, :null => false
    t.string  "Q60",     :limit => 20, :null => false
  end

  add_index "survey", ["user_id"], :name => "user_id"

  create_table "survey_g2k", :force => true do |t|
    t.integer "user_id",               :null => false
    t.string  "Q1",      :limit => 20, :null => false
    t.string  "Q2",      :limit => 20, :null => false
    t.string  "Q3",      :limit => 20, :null => false
    t.string  "Q4",      :limit => 20, :null => false
    t.string  "Q5",      :limit => 20, :null => false
    t.string  "Q6",      :limit => 20, :null => false
    t.string  "Q7",      :limit => 20, :null => false
    t.string  "Q8",      :limit => 20, :null => false
    t.string  "Q9",      :limit => 20, :null => false
    t.string  "Q10",     :limit => 20, :null => false
    t.string  "Q11",     :limit => 20, :null => false
    t.string  "Q12",     :limit => 20, :null => false
    t.string  "Q13",     :limit => 20, :null => false
    t.string  "Q14",     :limit => 20, :null => false
    t.string  "Q15",     :limit => 20, :null => false
    t.string  "Q16",     :limit => 20, :null => false
    t.string  "Q17",     :limit => 20, :null => false
    t.string  "Q18",     :limit => 20, :null => false
    t.string  "Q19",     :limit => 20, :null => false
    t.string  "Q20",     :limit => 20, :null => false
    t.string  "Q21",     :limit => 20, :null => false
    t.string  "Q22",     :limit => 20, :null => false
    t.string  "Q23",     :limit => 20, :null => false
    t.string  "Q24",     :limit => 20, :null => false
    t.string  "Q25",     :limit => 20, :null => false
    t.string  "Q26",     :limit => 20, :null => false
    t.string  "Q27",     :limit => 20, :null => false
    t.string  "Q28",     :limit => 20, :null => false
    t.string  "Q29",     :limit => 20, :null => false
    t.string  "Q30",     :limit => 20, :null => false
    t.string  "Q31",     :limit => 20, :null => false
    t.string  "Q32",     :limit => 20, :null => false
    t.string  "Q33",     :limit => 20, :null => false
    t.string  "Q34",     :limit => 20, :null => false
    t.string  "Q35",     :limit => 20, :null => false
    t.string  "Q36",     :limit => 20, :null => false
    t.string  "Q37",     :limit => 20, :null => false
    t.string  "Q38",     :limit => 20, :null => false
    t.string  "Q39",     :limit => 20, :null => false
    t.string  "Q40",     :limit => 20, :null => false
    t.string  "Q41",     :limit => 20, :null => false
    t.string  "Q42",     :limit => 20, :null => false
    t.string  "Q43",     :limit => 20, :null => false
    t.string  "Q44",     :limit => 20, :null => false
    t.string  "Q45",     :limit => 20, :null => false
    t.string  "Q46",     :limit => 20, :null => false
    t.string  "Q47",     :limit => 20, :null => false
    t.string  "Q48",     :limit => 20, :null => false
    t.string  "Q49",     :limit => 20, :null => false
    t.string  "Q50",     :limit => 20, :null => false
    t.string  "Q51",     :limit => 20, :null => false
    t.string  "Q52",     :limit => 20, :null => false
    t.string  "Q53",     :limit => 20, :null => false
    t.string  "Q54",     :limit => 20, :null => false
    t.string  "Q55",     :limit => 20, :null => false
    t.string  "Q56",     :limit => 20, :null => false
    t.string  "Q57",     :limit => 20, :null => false
    t.string  "Q58",     :limit => 20, :null => false
    t.string  "Q59",     :limit => 20, :null => false
    t.string  "Q60",     :limit => 20, :null => false
  end

  create_table "survey_mult", :id => false, :force => true do |t|
    t.integer "id",                    :null => false
    t.string  "user_id", :limit => 5,  :null => false
    t.string  "code",    :limit => 10, :null => false
    t.integer "aid",                   :null => false
  end

  add_index "survey_mult", ["user_id"], :name => "m_user_id"

  create_table "survey_mult_g2k", :id => false, :force => true do |t|
    t.integer "id",                    :null => false
    t.string  "user_id", :limit => 5,  :null => false
    t.string  "code",    :limit => 10, :null => false
    t.integer "aid",                   :null => false
  end

  create_table "temp_sorteo", :primary_key => "id_temp", :force => true do |t|
    t.integer "user_id", :null => false
  end

  create_table "url_list_1", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1031", :primary_key => "id_url", :force => true do |t|
    t.string  "url"
    t.integer "status", :limit => 1
  end

  create_table "url_list_1032", :primary_key => "id_url", :force => true do |t|
    t.string  "url"
    t.integer "status", :limit => 1
  end

  create_table "url_list_1034", :id => false, :force => true do |t|
    t.integer "id_url"
    t.string  "url"
    t.integer "status", :limit => 1
  end

  create_table "url_list_1035", :primary_key => "id_url", :force => true do |t|
    t.string  "url"
    t.integer "status", :limit => 1
  end

  create_table "url_list_1036", :primary_key => "id_url", :force => true do |t|
    t.string  "url"
    t.integer "status", :limit => 1
  end

  create_table "url_list_1038", :primary_key => "id_url", :force => true do |t|
    t.string  "url",                                :null => false
    t.integer "status", :limit => 1, :default => 0, :null => false
  end

  create_table "url_list_1039", :primary_key => "id_url", :force => true do |t|
    t.string  "url",                                :null => false
    t.integer "status", :limit => 1, :default => 0, :null => false
  end

  create_table "url_list_1040", :primary_key => "id_url", :force => true do |t|
    t.string  "url"
    t.integer "status", :limit => 1
  end

  create_table "url_list_1041", :primary_key => "id_url", :force => true do |t|
    t.string  "url",                 :null => false
    t.integer "status", :limit => 1
  end

  create_table "url_list_1042", :primary_key => "id_url", :force => true do |t|
    t.string  "url",                 :null => false
    t.integer "status", :limit => 1
  end

  create_table "url_list_1043", :primary_key => "id_url", :force => true do |t|
    t.string  "url",                 :null => false
    t.integer "status", :limit => 1
  end

  create_table "url_list_1059", :primary_key => "id_url", :force => true do |t|
    t.string  "url"
    t.integer "status", :limit => 1
  end

  create_table "url_list_1060", :primary_key => "id_url", :force => true do |t|
    t.string  "url"
    t.integer "status", :limit => 1
  end

  create_table "url_list_1061", :primary_key => "id_url", :force => true do |t|
    t.string  "url"
    t.integer "status", :limit => 1
  end

  create_table "url_list_1062", :primary_key => "id_url", :force => true do |t|
    t.string  "url"
    t.integer "status", :limit => 1
  end

  create_table "url_list_1063", :primary_key => "id_url", :force => true do |t|
    t.string  "url"
    t.integer "status", :limit => 1
  end

  create_table "url_list_1064", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1064_old", :primary_key => "id_url", :force => true do |t|
    t.string  "url"
    t.integer "status", :limit => 1
  end

  create_table "url_list_1065", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email", :limit => 100
    t.integer  "token"
    t.integer  "source"
    t.datetime "enter"
  end

  create_table "url_list_1066", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email", :limit => 100
    t.integer  "token"
    t.integer  "source"
    t.datetime "enter"
  end

  create_table "url_list_1067", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1068", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1069", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1070", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1071", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1072", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1073", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1074", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 2
    t.datetime "enter"
  end

  create_table "url_list_1075", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1076", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 2
    t.datetime "enter"
  end

  create_table "url_list_1077", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1078", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 2
    t.datetime "enter"
  end

  create_table "url_list_1079", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1080", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1081", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1082", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1083", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1083_copy", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1084", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1084_copy", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1085", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1086", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1087", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1088", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1089", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1090", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1091", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1092", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1093", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1094", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1095", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1096", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  add_index "url_list_1096", ["id_url"], :name => "id_url_1096"
  add_index "url_list_1096", ["rec_email"], :name => "email_1096"

  create_table "url_list_1097", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1098", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1099", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1100", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1101", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1102", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1103", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1104", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1105", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1106", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1107", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1108", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1109", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1110", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1111", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1112", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1113", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1114", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1115", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1116", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1117", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1118", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1119", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1120", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1121", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1122", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1123", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1124", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1125", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1126", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1127", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1128", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1129", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1130", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1131", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1132", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1133", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1134", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1135", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1136", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1137", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1138", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1139", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1140", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1141", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1142", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1143", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1144", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1145", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1146", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1147", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1148", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1149", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1150", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1151", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1152", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1153", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1154", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1155", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1156", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1157", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1158", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1159", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1160", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1161", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1162", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1163", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1164", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1165", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1166", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1167", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1168", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1169", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1170", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1171", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1172", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1173", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1174", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1175", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1176", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1177", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1178", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1179", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1180", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1181", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1182", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1183", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1184", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1185", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1186", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1187", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1188", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1189", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1190", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1191", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1192", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1193", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1194", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1195", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1196", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1197", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1198", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1199", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1200", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1201", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1202", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1203", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1204", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1205", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1206", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1207", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1208", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1209", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1210", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1211", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1212", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1213", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1214", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1215", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1216", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1217", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1218", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1219", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1220", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1221", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1222", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1223", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1224", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1225", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1226", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1227", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1228", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1229", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1230", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1231", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1232", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1233", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1234", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1235", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1236", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1237", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1238", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1239", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1240", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1241", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1242", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1243", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1244", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1245", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1246", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1247", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1248", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1249", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1250", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1251", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1252", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1253", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1254", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1255", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1256", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1257", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1258", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1259", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1260", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1261", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1262", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "url_list_1263", :primary_key => "id_url", :force => true do |t|
    t.string   "url"
    t.integer  "status",    :limit => 1
    t.string   "rec_email"
    t.string   "token",     :limit => 50
    t.integer  "source",    :limit => 1
    t.datetime "enter"
  end

  create_table "us_a", :id => false, :force => true do |t|
    t.string   "tabla",          :limit => 2,   :default => "", :null => false
    t.integer  "id",                            :default => 0,  :null => false
    t.string   "firstname",      :limit => 50,  :default => "", :null => false
    t.string   "email",          :limit => 100, :default => "", :null => false
    t.integer  "banned",         :limit => 8,   :default => 0,  :null => false
    t.string   "last_ip",        :limit => 40,  :default => "", :null => false
    t.datetime "created",                                       :null => false
    t.string   "country",        :limit => 5
    t.string   "district",       :limit => 50,  :default => "", :null => false
    t.string   "city",           :limit => 50
    t.string   "sex",            :limit => 1
    t.date     "dateofbirth"
    t.string   "age",            :limit => 4
    t.integer  "ed_level",                      :default => 0,  :null => false
    t.integer  "ocupation",                     :default => 0,  :null => false
    t.integer  "activated",      :limit => 8
    t.string   "campaign",       :limit => 50
    t.string   "activation_key", :limit => 50
  end

  create_table "usc_report", :primary_key => "usc_report_id", :force => true do |t|
    t.integer "user_client_id"
    t.string  "description"
    t.string  "db_host"
    t.string  "db_name"
    t.string  "db_user"
    t.string  "db_password"
    t.text    "report_sql"
  end

  create_table "user_autologin", :id => false, :force => true do |t|
    t.string   "key_id",     :limit => 32,                 :null => false
    t.integer  "user_id",    :limit => 3,   :default => 0, :null => false
    t.string   "user_agent", :limit => 150,                :null => false
    t.string   "last_ip",    :limit => 40,                 :null => false
    t.datetime "last_login",                               :null => false
  end

  create_table "user_client", :primary_key => "user_client_id", :force => true do |t|
    t.string "user_client"
    t.string "password"
  end

  create_table "user_profile", :force => true do |t|
    t.integer "user_id",               :null => false
    t.string  "country", :limit => 20
    t.string  "website"
  end

  create_table "user_temp", :force => true do |t|
    t.string   "firstname",      :limit => 50,  :null => false
    t.string   "lastname",       :limit => 50,  :null => false
    t.string   "password",       :limit => 100, :null => false
    t.string   "email",          :limit => 100, :null => false
    t.string   "activation_key", :limit => 50,  :null => false
    t.string   "last_ip",        :limit => 40,  :null => false
    t.datetime "created",                       :null => false
    t.string   "country",        :limit => 5
    t.string   "district",       :limit => 50,  :null => false
    t.string   "city",           :limit => 50
    t.string   "sex",            :limit => 1
    t.date     "dateofbirth"
    t.integer  "ed_level",                      :null => false
    t.integer  "ocupation",                     :null => false
    t.boolean  "surveys",                       :null => false
    t.string   "campaign",       :limit => 25
  end

  create_table "users", :force => true do |t|
    t.integer  "role_id",                        :default => 1,     :null => false
    t.string   "firstname",       :limit => 50,                     :null => false
    t.string   "lastname",        :limit => 50,                     :null => false
    t.string   "password",        :limit => 100,                    :null => false
    t.string   "email",           :limit => 100,                    :null => false
    t.boolean  "banned",                         :default => false, :null => false
    t.string   "ban_reason"
    t.string   "newpass",         :limit => 34
    t.string   "newpass_key",     :limit => 32
    t.datetime "newpass_time"
    t.string   "last_ip",         :limit => 40,                     :null => false
    t.datetime "last_login",                                        :null => false
    t.datetime "created",                                           :null => false
    t.datetime "modified",                                          :null => false
    t.string   "country",         :limit => 5
    t.string   "district",        :limit => 50,                     :null => false
    t.string   "city",            :limit => 50
    t.string   "sex",             :limit => 1
    t.date     "dateofbirth"
    t.integer  "ed_level",                                          :null => false
    t.integer  "ocupation",                                         :null => false
    t.boolean  "surveys",                                           :null => false
    t.boolean  "activated"
    t.string   "campaign",        :limit => 50
    t.string   "activation_key",  :limit => 50
    t.string   "youngson",        :limit => 50
    t.string   "oldson",          :limit => 50
    t.datetime "activation_date"
  end

  add_index "users", ["email"], :name => "email"
  add_index "users", ["id"], :name => "id"

  create_table "users_all", :id => false, :force => true do |t|
    t.string   "tabla",       :limit => 2,   :default => "", :null => false
    t.integer  "id",                         :default => 0,  :null => false
    t.string   "firstname",   :limit => 50,  :default => "", :null => false
    t.string   "email",       :limit => 100, :default => "", :null => false
    t.integer  "banned",      :limit => 8,   :default => 0,  :null => false
    t.string   "last_ip",     :limit => 40,  :default => "", :null => false
    t.datetime "created",                                    :null => false
    t.string   "country",     :limit => 5
    t.string   "district",    :limit => 50,  :default => "", :null => false
    t.string   "city",        :limit => 50
    t.string   "sex",         :limit => 1
    t.date     "dateofbirth"
    t.integer  "ed_level",                   :default => 0,  :null => false
    t.integer  "ocupation",                  :default => 0,  :null => false
    t.integer  "activated",   :limit => 8
    t.string   "campaign",    :limit => 50
  end

  create_table "users_change", :primary_key => "id_change", :force => true do |t|
    t.integer  "id",                                                :null => false
    t.integer  "role_id",                        :default => 1,     :null => false
    t.string   "firstname",       :limit => 50,                     :null => false
    t.string   "lastname",        :limit => 50,                     :null => false
    t.string   "password",        :limit => 100,                    :null => false
    t.string   "email",           :limit => 100,                    :null => false
    t.boolean  "banned",                         :default => false, :null => false
    t.string   "ban_reason"
    t.string   "newpass",         :limit => 34
    t.string   "newpass_key",     :limit => 32
    t.datetime "newpass_time"
    t.string   "last_ip",         :limit => 40,                     :null => false
    t.datetime "last_login",                                        :null => false
    t.datetime "created",                                           :null => false
    t.datetime "modified",                                          :null => false
    t.string   "country",         :limit => 5
    t.string   "district",        :limit => 50,                     :null => false
    t.string   "city",            :limit => 50
    t.string   "sex",             :limit => 1
    t.date     "dateofbirth"
    t.integer  "ed_level",                                          :null => false
    t.integer  "ocupation",                                         :null => false
    t.boolean  "surveys",                                           :null => false
    t.boolean  "activated"
    t.string   "campaign",        :limit => 50
    t.string   "activation_key",  :limit => 50
    t.datetime "activation_date"
  end

  add_index "users_change", ["email"], :name => "email_change"
  add_index "users_change", ["id_change"], :name => "id_change"

  create_table "users_dif", :id => false, :force => true do |t|
    t.integer  "id",                             :default => 0,     :null => false
    t.integer  "role_id",                        :default => 1,     :null => false
    t.string   "firstname",       :limit => 50,                     :null => false
    t.string   "lastname",        :limit => 50,                     :null => false
    t.string   "password",        :limit => 100,                    :null => false
    t.string   "email",           :limit => 100,                    :null => false
    t.boolean  "banned",                         :default => false, :null => false
    t.string   "ban_reason"
    t.string   "newpass",         :limit => 34
    t.string   "newpass_key",     :limit => 32
    t.datetime "newpass_time"
    t.string   "last_ip",         :limit => 40,                     :null => false
    t.datetime "last_login",                                        :null => false
    t.datetime "created",                                           :null => false
    t.datetime "modified",                                          :null => false
    t.string   "country",         :limit => 5
    t.string   "district",        :limit => 50,                     :null => false
    t.string   "city",            :limit => 50
    t.string   "sex",             :limit => 1
    t.date     "dateofbirth"
    t.integer  "ed_level",                                          :null => false
    t.integer  "ocupation",                                         :null => false
    t.boolean  "surveys",                                           :null => false
    t.boolean  "activated"
    t.string   "campaign",        :limit => 50
    t.string   "activation_key",  :limit => 50
    t.datetime "activation_date"
  end

  create_table "users_email", :id => false, :force => true do |t|
    t.string "email", :limit => 100, :null => false
  end

  create_table "users_extra", :primary_key => "users_extra_id", :force => true do |t|
    t.integer "user_id",    :null => false
    t.integer "var_code",   :null => false
    t.integer "value_code", :null => false
    t.integer "source_id",  :null => false
    t.date    "updated",    :null => false
  end

  create_table "users_extra_source", :primary_key => "source_id", :force => true do |t|
    t.string "source", :limit => 100, :null => false
  end

  create_table "users_extra_values", :primary_key => "value_code_id", :force => true do |t|
    t.integer "var_code",                       :null => false
    t.integer "value_code",                     :null => false
    t.string  "value_code_name", :limit => 100, :null => false
  end

  add_index "users_extra_values", ["var_code", "value_code"], :name => "unique_value", :unique => true

  create_table "users_extra_variables", :primary_key => "var_code", :force => true do |t|
    t.string "var_code_name", :limit => 100, :null => false
  end

  create_table "users_g2k", :force => true do |t|
    t.integer  "role_id",                        :default => 1,     :null => false
    t.string   "firstname",       :limit => 50,                     :null => false
    t.string   "lastname",        :limit => 50,                     :null => false
    t.string   "password",        :limit => 100,                    :null => false
    t.string   "email",           :limit => 100,                    :null => false
    t.boolean  "banned",                         :default => false, :null => false
    t.string   "ban_reason"
    t.string   "newpass",         :limit => 34
    t.string   "newpass_key",     :limit => 32
    t.datetime "newpass_time"
    t.string   "last_ip",         :limit => 40,                     :null => false
    t.datetime "last_login",                                        :null => false
    t.datetime "created",                                           :null => false
    t.datetime "modified",                                          :null => false
    t.string   "country",         :limit => 5
    t.string   "district",        :limit => 50,                     :null => false
    t.string   "city",            :limit => 50
    t.string   "sex",             :limit => 1
    t.date     "dateofbirth"
    t.integer  "ed_level",                                          :null => false
    t.integer  "ocupation",                                         :null => false
    t.boolean  "surveys",                                           :null => false
    t.boolean  "activated"
    t.string   "campaign",        :limit => 50
    t.string   "activation_key",  :limit => 50
    t.datetime "activation_date"
  end

  create_table "usersview", :force => true do |t|
    t.integer  "role_id",                        :default => 1,     :null => false
    t.string   "firstname",       :limit => 50,                     :null => false
    t.string   "lastname",        :limit => 50,                     :null => false
    t.string   "password",        :limit => 100,                    :null => false
    t.string   "email",           :limit => 100,                    :null => false
    t.boolean  "banned",                         :default => false, :null => false
    t.string   "ban_reason"
    t.string   "newpass",         :limit => 34
    t.string   "newpass_key",     :limit => 32
    t.datetime "newpass_time"
    t.string   "last_ip",         :limit => 40,                     :null => false
    t.datetime "last_login",                                        :null => false
    t.datetime "created",                                           :null => false
    t.datetime "modified",                                          :null => false
    t.string   "country",         :limit => 5
    t.string   "district",        :limit => 50,                     :null => false
    t.string   "city",            :limit => 50
    t.string   "sex",             :limit => 1
    t.date     "dateofbirth"
    t.integer  "ed_level",                                          :null => false
    t.integer  "ocupation",                                         :null => false
    t.boolean  "surveys",                                           :null => false
    t.boolean  "activated"
    t.string   "campaign",        :limit => 50
    t.string   "activation_key",  :limit => 50
    t.string   "youngson",        :limit => 50
    t.string   "oldson",          :limit => 50
    t.datetime "activation_date"
  end

  create_table "visit", :primary_key => "visitid", :force => true do |t|
    t.string "visithash",     :limit => 45,  :null => false
    t.string "visitbrowser",  :limit => 100
    t.string "visitplatform", :limit => 100
    t.string "visitip",       :limit => 45
  end

  add_index "visit", ["visithash"], :name => "visitahash_UNIQUE", :unique => true

  create_table "z_temp_col", :force => true do |t|
    t.integer  "user_id",                :null => false
    t.string   "tabla",    :limit => 50, :null => false
    t.string   "email",                  :null => false
    t.datetime "created",                :null => false
    t.string   "campaign", :limit => 50, :null => false
  end

end
