import os
from flask import Flask, request, jsonify, render_template
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import cosine_similarity

app = Flask(__name__)

# Function to check plagiarism between two texts
def check_plagiarism(text1, text2):
    # Vectorization
    vectorizer = TfidfVectorizer()
    vectors = vectorizer.fit_transform([text1, text2]).toarray()
    
    # Calculate cosine similarity
    sim_score = cosine_similarity([vectors[0]], [vectors[1]])[0][0]
    
    return sim_score

# Home route to serve the HTML page
@app.route('/')
def index():
    return render_template('index.html')

# API route to check plagiarism
@app.route('/check_plagiarism', methods=['POST'])
def check_plagiarism_route():
    data = request.get_json()
    text1 = data['text1']
    text2 = data['text2']
    similarity_score = check_plagiarism(text1, text2)
    return jsonify({'similarity': similarity_score})

if __name__ == '__main__':
    app.run(debug=True)
