import SwiftUI

struct ContentView: View {
    var body: some View {
        if let quote = quotes.randomElement() {
            VStack {
                Text(quote.text)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .minimumScaleFactor(0.6)
                Text("- \(quote.author)")
                    .font(.caption2)
                    .foregroundColor(.secondary)
            }
            .padding()
        } else {
            Text("No quote available")
        }
    }
}

#Preview {
    ContentView()
}
