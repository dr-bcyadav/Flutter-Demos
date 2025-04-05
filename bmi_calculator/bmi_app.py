# %%
from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/bmi', methods=['POST'])
def calculate_bmi():
    data = request.get_json()
    height = data.get('height')  # in cm
    weight = data.get('weight')  # in kg

    if not height or not weight:
        return jsonify({'error': 'Missing parameters'}), 400

    height_m = height / 100
    bmi = weight / (height_m ** 2)

    if bmi < 18.5:
        category = 'Underweight'
    elif bmi < 24.9:
        category = 'Normal'
    elif bmi < 29.9:
        category = 'Overweight'
    else:
        category = 'Obese'

    return jsonify({
        'bmi': round(bmi, 1),
        'category': category
    })

if __name__ == '__main__':
    app.run(debug=True, port=5000)
