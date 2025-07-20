-- Instalar la extensión pgvector
CREATE EXTENSION IF NOT EXISTS vector;

-- Verificar que la extensión se instaló correctamente
SELECT * FROM pg_extension WHERE extname = 'vector';

-- Crear una tabla de prueba con vectores
CREATE TABLE IF NOT EXISTS test_vectors (
    id SERIAL PRIMARY KEY,
    name TEXT,
    embedding vector(3)
);

-- Insertar datos de prueba
INSERT INTO test_vectors (name, embedding) VALUES
    ('vector1', '[1,2,3]'),
    ('vector2', '[4,5,6]'),
    ('vector3', '[7,8,9]');

-- Probar búsqueda por similitud coseno
SELECT name, embedding, 
       1 - (embedding <=> '[1,2,3]') as cosine_similarity
FROM test_vectors
ORDER BY embedding <=> '[1,2,3]'
LIMIT 3;

-- Mostrar mensaje de confirmación
DO $$
BEGIN
    RAISE NOTICE 'pgvector instalado correctamente y funcionando!';
END
$$;
