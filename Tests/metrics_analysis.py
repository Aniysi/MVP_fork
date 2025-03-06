import os
import json
from radon.metrics import h_visit

def analyze_file(filepath):
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()
        result = h_visit(content)
        return {
            'file': filepath,
            'fan_in': len(result.fan_in),
            'fan_out': len(result.fan_out),
            'dependencies': list(result.external_dependencies)
        }

def main():
    results = []
    for root, _, files in os.walk('.'):
        for file in files:
            if file.endswith('.py'):
                filepath = os.path.join(root, file)
                try:
                    results.append(analyze_file(filepath))
                except Exception as e:
                    print(f"Error analyzing {filepath}: {e}")
    
    print(json.dumps(results, indent=2))

if __name__ == '__main__':
    main()