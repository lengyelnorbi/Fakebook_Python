from flask import Flask, render_template, request, session, redirect, url_for, flash
import cx_Oracle

connectionStr = 'lengyel/Asd12345@localhost:1521/xe'
cnsStrEgyetemi = 'C##GG6K4U/C##GG6K4U@orania2.inf.u-szeged.hu:1521/orania2'

app = Flask(__name__)


@app.route('/', methods=['GET', 'POST'])
def home(): 
    if request.method == 'POST':
        option = request.form.get('tables')
    else:
        option = "ALBUM_KEPEK" 
    conn = cx_Oracle.connect(cnsStrEgyetemi)
    cur = conn.cursor()
    sql = 'SELECT * FROM ' + option

    cur.execute(sql)
    col_names = [row[0] for row in cur.description]
    res = cur.fetchall()
    cur.close()
    return render_template('home.html', result = res, columns = col_names)


if __name__ == '__main__':
    app.run()
