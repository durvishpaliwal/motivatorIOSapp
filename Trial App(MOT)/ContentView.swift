import SwiftUI

struct ContentView: View {
    @State private var currentQuote: Quote = quotes[0]
    
    var body: some View {
        ZStack {
            Image("BackgroundPhoto")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                Spacer()
                
                // Quotation mark icon
                Image(systemName: "quote.opening")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .opacity(0.6)
                
                // Quote text
                VStack(spacing: 20) {
                    Text(currentQuote.text)
                        .font(.system(size: 28, weight: .semibold, design: .rounded))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .lineSpacing(2)
                    
                    // Author
                    Text("— \(currentQuote.author)")
                        .font(.system(size: 16, weight: .light, design: .rounded))
                        .foregroundColor(.white)
                        .opacity(0.8)
                }
                .padding(30)
                .background(Color.white.opacity(0.1))
                .cornerRadius(20)
                .padding(20)
                
                Spacer()
                
                // New Quote Button
                Button(action: newQuote) {
                    HStack {
                        Image(systemName: "arrow.clockwise")
                        Text("New Quote")
                    }
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding(15)
                    .background(Color.white.opacity(0.2))
                    .cornerRadius(12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.white.opacity(0.3), lineWidth: 1)
                    )
                }
                .padding(20)
                
                Spacer()
            }
        }
        .onAppear {
            currentQuote = quotes.randomElement() ?? quotes[0]
        }
    }
    
    func newQuote() {
        withAnimation(.easeInOut(duration: 0.3)) {
            currentQuote = quotes.randomElement() ?? quotes[0]
        }
    }
}

#Preview {
    ContentView()
}
