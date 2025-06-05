        // Simple tab switching functionality
        const tabs = document.querySelectorAll('.tab');
        
        tabs.forEach(tab => {
            tab.addEventListener('click', () => {
                tabs.forEach(t => t.classList.remove('active'));
                tab.classList.add('active');
            });
        });
        
        // Current date for departure field
        const today = new Date();
        const tomorrow = new Date(today);
        tomorrow.setDate(tomorrow.getDate() + 1);
        
        document.getElementById('departure').valueAsDate = tomorrow;
        
        // Return date 7 days after departure
        const nextWeek = new Date(tomorrow);
        nextWeek.setDate(nextWeek.getDate() + 7);
        document.getElementById('return').valueAsDate = nextWeek;