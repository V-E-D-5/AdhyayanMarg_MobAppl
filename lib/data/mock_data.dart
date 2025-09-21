import '../models/models.dart';

// Region-specific mock data for Jammu & Kashmir

// District data for Jammu & Kashmir
const Map<String, List<String>> districts = {
  'Jammu': [
    'Jammu',
    'Kathua',
    'Samba',
    'Udhampur',
    'Reasi',
    'Rajouri',
    'Poonch',
    'Doda',
    'Ramban',
    'Kishtwar',
  ],
  'Kashmir': [
    'Srinagar',
    'Anantnag',
    'Kulgam',
    'Pulwama',
    'Shopian',
    'Budgam',
    'Ganderbal',
    'Bandipora',
    'Baramulla',
    'Kupwara',
  ],
};

const List<College> jkColleges = [
  // Premier Technical Institutes
  College(
    id: 'iit-jammu',
    name: 'Indian Institute of Technology (IIT) Jammu',
    city: 'Jammu',
    state: 'J&K',
    coursesOffered: [
      'B.Tech. Computer Science & Engineering',
      'B.Tech. Electrical Engineering',
      'B.Tech. Mechanical Engineering',
      'B.Tech. Civil Engineering',
      'B.Tech. Chemical Engineering',
    ],
    imageAsset: 'assets/images/iit_jammu.jpg',
    nirfRank: 'NIRF Engineering Rank: 51-100 (2024)',
    estimatedFees: '₹2.5 - 3.5 Lakhs',
  ),
  College(
    id: 'nit-srinagar',
    name: 'National Institute of Technology (NIT) Srinagar',
    city: 'Srinagar',
    state: 'J&K',
    coursesOffered: [
      'B.Tech. Civil Engineering',
      'B.Tech. Electrical Engineering',
      'B.Tech. Mechanical Engineering',
      'B.Tech. Electronics & Communication Engineering',
      'B.Tech. Computer Science & Engineering',
      'B.Tech. Chemical Engineering',
      'B.Tech. Metallurgical & Materials Engineering',
      'B.Tech. Information Technology',
    ],
    imageAsset: 'assets/images/nit_srinagar.jpeg',
    nirfRank: 'NIRF Engineering Rank: 101-150 (2024)',
    estimatedFees: '₹1.5 - 2.5 Lakhs',
  ),
  College(
    id: 'university-of-jammu',
    name: 'University of Jammu',
    city: 'Jammu',
    state: 'J&K',
    coursesOffered: [
      'B.A. (Hons.) in various disciplines',
      'B.Sc. (Hons.) in various disciplines',
      'B.Com. (Hons.)',
      'B.B.A.',
      'B.C.A.',
      'B.Ed.',
      'B.P.Ed.',
      'LL.B.',
      'B.Lib.I.Sc.',
    ],
    imageAsset: 'assets/images/university_of_jammu.jpg',
    nirfRank: 'NIRF Overall Rank: 151-200 (2024)',
    estimatedFees: '₹50,000 - 1.5 Lakhs',
  ),
  College(
    id: 'university-of-kashmir',
    name: 'University of Kashmir',
    city: 'Srinagar',
    state: 'J&K',
    coursesOffered: [
      'B.A. (Hons.) in various disciplines',
      'B.Sc. (Hons.) in various disciplines',
      'B.Com. (Hons.)',
      'B.B.A.',
      'B.C.A.',
      'B.Ed.',
      'B.P.Ed.',
      'LL.B.',
      'B.Lib.I.Sc.',
      'B.Tech. in various disciplines',
    ],
    imageAsset: 'assets/images/university_of_kashmir.jpeg',
    estimatedFees: '₹50,000 - 1.5 Lakhs',
  ),
  College(
    id: 'smvdu-katra',
    name: 'Shri Mata Vaishno Devi University (SMVDU)',
    city: 'Katra',
    state: 'J&K',
    coursesOffered: [
      'B.Tech. Computer Science & Engineering',
      'B.Tech. Electronics & Communication Engineering',
      'B.Tech. Mechanical Engineering',
      'B.Tech. Civil Engineering',
      'B.Tech. Electrical Engineering',
      'B.Tech. Biotechnology',
      'B.Arch.',
      'B.Sc. (Hons.) Physics, Mathematics',
      'B.A. (Hons.) in various disciplines',
      'B.B.A.',
    ],
    imageAsset: 'assets/images/smvdu.webp',
    estimatedFees: '₹1 - 2 Lakhs',
  ),
  // Traditional Colleges
  College(
    id: 'ggm-science-jammu',
    name: 'Govt. Gandhi Memorial (GGM) Science College',
    city: 'Jammu',
    state: 'J&K',
    coursesOffered: [
      'B.Sc. (Medical)',
      'B.Sc. (Non-Medical)',
      'B.Com',
      'B.A.',
      'BCA',
    ],
    imageAsset: 'assets/images/ggm_college.jpg',
    estimatedFees: '₹30,000 - 80,000',
  ),
  College(
    id: 'amar-singh-srinagar',
    name: 'Amar Singh College',
    city: 'Srinagar',
    state: 'J&K',
    coursesOffered: [
      'B.Sc. (IT)',
      'B.Sc. (Medical)',
      'B.A.',
      'B.Com',
    ],
    imageAsset: 'assets/images/amar_singh_college.jpeg',
    estimatedFees: '₹30,000 - 80,000',
  ),
  College(
    id: 'gdc-women-ma-road',
    name: 'Govt. Degree College for Women, M.A. Road',
    city: 'Srinagar',
    state: 'J&K',
    coursesOffered: [
      'B.Sc.',
      'B.A.',
      'B.Com',
      'BBA',
    ],
    imageAsset: 'assets/images/gdc_women_ma_road.jpg',
    estimatedFees: '₹20,000 - 50,000',
  ),
  College(
    id: 'islamia-college-srinagar',
    name: 'Islamia College of Science and Commerce',
    city: 'Srinagar',
    state: 'J&K',
    coursesOffered: [
      'B.Sc.',
      'B.Com',
      'BBA',
      'BCA',
    ],
    imageAsset: 'assets/images/islamia_college.webp',
    estimatedFees: '₹20,000 - 50,000',
  ),
  College(
    id: 'gdc-baramulla',
    name: 'Govt. Degree College, Baramulla',
    city: 'Baramulla',
    state: 'J&K',
    coursesOffered: [
      'B.Sc.',
      'B.A.',
      'B.Com',
    ],
    imageAsset: 'assets/images/gdc_baramulla.jpg',
    estimatedFees: '₹20,000 - 50,000',
  ),
  // Medical Colleges
  College(
    id: 'aiims-jammu',
    name: 'All India Institute of Medical Sciences (AIIMS) Jammu',
    city: 'Jammu',
    state: 'J&K',
    coursesOffered: [
      'MBBS',
      'B.Sc. Nursing',
      'B.Sc. Medical Technology',
      'B.Sc. Radiography',
      'B.Sc. Physiotherapy',
      'B.Sc. Optometry',
      'B.Sc. Medical Laboratory Technology',
      'MD/MS in various specializations',
      'M.Sc. Nursing',
      'M.Sc. Medical Technology',
      'Ph.D. in Medical Sciences',
    ],
    imageAsset: 'assets/images/aiims_jammu.jpeg', // Using generic image
    nirfRank: 'NIRF Medical Rank: 51-100 (2024)',
    estimatedFees: '₹2 - 3 Lakhs',
  ),
  College(
    id: 'gmc-srinagar',
    name: 'Government Medical College (GMC) Srinagar',
    city: 'Srinagar',
    state: 'J&K',
    coursesOffered: [
      'MBBS',
      'B.Sc. Nursing',
      'B.Sc. Medical Technology',
      'B.Sc. Radiography',
      'B.Sc. Physiotherapy',
      'B.Sc. Optometry',
      'B.Sc. Medical Laboratory Technology',
      'MD/MS in various specializations',
      'M.Sc. Nursing',
      'M.Sc. Medical Technology',
    ],
    imageAsset: 'assets/images/gmc_srinagar.webp', // Using generic image
    estimatedFees: '₹1 - 2 Lakhs',
  ),
  College(
    id: 'gmc-jammu',
    name: 'Government Medical College (GMC) Jammu',
    city: 'Jammu',
    state: 'J&K',
    coursesOffered: [
      'MBBS',
      'B.Sc. Nursing',
      'B.Sc. Medical Technology',
      'B.Sc. Radiography',
      'B.Sc. Physiotherapy',
      'B.Sc. Optometry',
      'B.Sc. Medical Laboratory Technology',
      'MD/MS in various specializations',
      'M.Sc. Nursing',
      'M.Sc. Medical Technology',
    ],
    imageAsset: 'assets/images/gmc-jammu.jpg', // Using generic image
    estimatedFees: '₹1 - 2 Lakhs',
  ),
  College(
    id: 'skims-srinagar',
    name: 'Sher-i-Kashmir Institute of Medical Sciences (SKIMS) Srinagar',
    city: 'Srinagar',
    state: 'J&K',
    coursesOffered: [
      'MBBS',
      'B.Sc. Nursing',
      'B.Sc. Medical Technology',
      'B.Sc. Radiography',
      'B.Sc. Physiotherapy',
      'B.Sc. Optometry',
      'B.Sc. Medical Laboratory Technology',
      'MD/MS in various specializations',
      'M.Sc. Nursing',
      'M.Sc. Medical Technology',
      'Ph.D. in Medical Sciences',
    ],
    imageAsset: 'assets/images/skims.webp', // Using generic image
    estimatedFees: '₹1 - 2 Lakhs',
  ),
];

const List<CareerPath> careerPaths = [
  CareerPath(
    id: 'tourism-hospitality',
    title: 'Tourism & Hospitality',
    description:
        'Work in hotel management, travel operations, and eco-tourism. Significant scope in J&K tourism sector.',
    suitableStreams: ['Arts', 'Commerce', 'Others'],
  ),
  CareerPath(
    id: 'horticulture',
    title: 'Horticulture & Agriculture',
    description:
        'Focus on apple, saffron, and walnut cultivation, post-harvest management, and agri-business.',
    suitableStreams: ['Science(PCB)', 'Science(PCMB)', 'Others'],
  ),
  CareerPath(
    id: 'handicrafts',
    title: 'Handicrafts & Design',
    description:
        'Preserve and innovate in Pashmina, Papier-mâché, wood carving; roles in design and entrepreneurship.',
    suitableStreams: ['Arts', 'Commerce', 'Others'],
  ),
  CareerPath(
    id: 'public-administration-kas',
    title: 'Public Administration (KAS)',
    description:
        'Prepare for Jammu & Kashmir Administrative Service. Build foundations in polity and governance.',
    suitableStreams: ['Arts', 'Commerce', 'Others'],
  ),
  CareerPath(
    id: 'computer-science',
    title: 'Computer Science & IT',
    description:
        'Software development, data science, and IT services; growing opportunities and remote work.',
    suitableStreams: ['Science(PCM)', 'Science(PCMB)', 'Commerce'],
  ),
  CareerPath(
    id: 'commerce-finance',
    title: 'Commerce, Banking & Finance',
    description:
        'Careers in accounting, banking, insurance, and financial analysis; strong demand across sectors.',
    suitableStreams: ['Commerce', 'Others'],
  ),
  CareerPath(
    id: 'humanities-media',
    title: 'Humanities, Media & Social Sciences',
    description:
        'Pursue journalism, public policy, education, and community development; critical for regional growth.',
    suitableStreams: ['Arts', 'Others'],
  ),
  CareerPath(
    id: 'engineering',
    title: 'Engineering & Technology',
    description:
        'Design, develop, and innovate in various engineering fields including software, hardware, infrastructure, and manufacturing. High demand in both public and private sectors.',
    suitableStreams: ['Science(PCM)', 'Science(PCMB)', 'Others'],
  ),
  CareerPath(
    id: 'medical-healthcare',
    title: 'Medical & Healthcare',
    description:
        'Serve in healthcare sector as doctors, nurses, medical technicians, and allied health professionals. Critical for public health and medical services in J&K.',
    suitableStreams: ['Science(PCB)', 'Science(PCMB)', 'Others'],
  ),
];

// Detailed course information
const Map<String, Map<String, dynamic>> courseDetails = {
  'B.Tech. Computer Science & Engineering': {
    'duration': '4 years',
    'eligibility': '10+2 with Physics, Chemistry, Mathematics (PCM)',
    'entrance': 'JEE Main, JEE Advanced, State Engineering Entrance Exams',
    'subjects':
        'Programming, Data Structures, Algorithms, Database Management, Software Engineering, Computer Networks, Operating Systems',
    'career_prospects':
        'Software Developer, System Analyst, Data Scientist, Cybersecurity Expert, AI/ML Engineer',
    'top_companies': 'TCS, Infosys, Wipro, Microsoft, Google, Amazon, Adobe',
    'average_salary': '₹4-12 LPA (Entry Level)',
    'further_studies': 'M.Tech, MBA, MS in Computer Science, PhD',
    'description':
        'Focus on software development, system design, and computer applications. High demand in IT sector with excellent growth opportunities.',
  },
  'B.Tech. Electrical Engineering': {
    'duration': '4 years',
    'eligibility': '10+2 with Physics, Chemistry, Mathematics (PCM)',
    'entrance': 'JEE Main, JEE Advanced, State Engineering Entrance Exams',
    'subjects':
        'Circuit Analysis, Power Systems, Control Systems, Electronics, Signal Processing, Electrical Machines',
    'career_prospects':
        'Electrical Engineer, Power System Engineer, Control Systems Engineer, Electronics Engineer',
    'top_companies':
        'BHEL, NTPC, Power Grid Corporation, Siemens, ABB, Schneider Electric',
    'average_salary': '₹3-10 LPA (Entry Level)',
    'further_studies': 'M.Tech in Power Systems, Control Systems, Electronics',
    'description':
        'Design and maintain electrical systems, power generation, transmission, and distribution. Essential for infrastructure development.',
  },
  'B.Tech. Mechanical Engineering': {
    'duration': '4 years',
    'eligibility': '10+2 with Physics, Chemistry, Mathematics (PCM)',
    'entrance': 'JEE Main, JEE Advanced, State Engineering Entrance Exams',
    'subjects':
        'Thermodynamics, Fluid Mechanics, Machine Design, Manufacturing Processes, CAD/CAM, Materials Science',
    'career_prospects':
        'Mechanical Engineer, Design Engineer, Production Engineer, Quality Control Engineer, Project Manager',
    'top_companies': 'Tata Motors, Mahindra, Maruti Suzuki, L&T, BHEL, ISRO',
    'average_salary': '₹3-8 LPA (Entry Level)',
    'further_studies': 'M.Tech in Manufacturing, Design, Thermal Engineering',
    'description':
        'Design, manufacture, and maintain mechanical systems. Broad field with opportunities in automotive, aerospace, and manufacturing industries.',
  },
  'B.Tech. Civil Engineering': {
    'duration': '4 years',
    'eligibility': '10+2 with Physics, Chemistry, Mathematics (PCM)',
    'entrance': 'JEE Main, JEE Advanced, State Engineering Entrance Exams',
    'subjects':
        'Structural Analysis, Concrete Technology, Surveying, Geotechnical Engineering, Transportation Engineering, Environmental Engineering',
    'career_prospects':
        'Civil Engineer, Structural Engineer, Project Manager, Construction Manager, Urban Planner',
    'top_companies': 'L&T, HCC, Gammon India, IRCON, NHAI, CPWD',
    'average_salary': '₹3-7 LPA (Entry Level)',
    'further_studies':
        'M.Tech in Structural Engineering, Transportation, Water Resources',
    'description':
        'Design and construct infrastructure projects like buildings, roads, bridges, and dams. Essential for national development.',
  },
  'B.Tech. Chemical Engineering': {
    'duration': '4 years',
    'eligibility': '10+2 with Physics, Chemistry, Mathematics (PCM)',
    'entrance': 'JEE Main, JEE Advanced, State Engineering Entrance Exams',
    'subjects':
        'Chemical Process Calculations, Thermodynamics, Mass Transfer, Heat Transfer, Process Control, Plant Design',
    'career_prospects':
        'Process Engineer, Plant Manager, Quality Control Engineer, Environmental Engineer, Research Scientist',
    'top_companies':
        'Reliance Industries, IOCL, BPCL, HPCL, Tata Chemicals, BASF',
    'average_salary': '₹3-9 LPA (Entry Level)',
    'further_studies': 'M.Tech in Chemical Engineering, MBA, PhD',
    'description':
        'Design and optimize chemical processes for industries like petroleum, pharmaceuticals, and food processing.',
  },
  'B.Tech. Electronics & Communication Engineering': {
    'duration': '4 years',
    'eligibility': '10+2 with Physics, Chemistry, Mathematics (PCM)',
    'entrance': 'JEE Main, JEE Advanced, State Engineering Entrance Exams',
    'subjects':
        'Digital Electronics, Communication Systems, Microprocessors, VLSI Design, Signal Processing, Antenna Design',
    'career_prospects':
        'Electronics Engineer, Communication Engineer, VLSI Designer, Embedded Systems Engineer, Network Engineer',
    'top_companies': 'Qualcomm, Intel, Samsung, Nokia, Ericsson, ISRO, DRDO',
    'average_salary': '₹3-10 LPA (Entry Level)',
    'further_studies':
        'M.Tech in VLSI, Communication Systems, Signal Processing',
    'description':
        'Design and develop electronic devices and communication systems. High demand in telecom and electronics industries.',
  },
  'B.Tech. Information Technology': {
    'duration': '4 years',
    'eligibility': '10+2 with Physics, Chemistry, Mathematics (PCM)',
    'entrance': 'JEE Main, JEE Advanced, State Engineering Entrance Exams',
    'subjects':
        'Programming, Database Management, Web Technologies, Software Engineering, Computer Networks, Information Security',
    'career_prospects':
        'Software Developer, Web Developer, Database Administrator, IT Consultant, System Administrator',
    'top_companies': 'TCS, Infosys, Wipro, HCL, Accenture, Capgemini',
    'average_salary': '₹3-10 LPA (Entry Level)',
    'further_studies': 'M.Tech in IT, MBA, MS in Information Systems',
    'description':
        'Focus on information systems, software development, and IT solutions. Growing field with diverse career opportunities.',
  },
  'B.Tech. Biotechnology': {
    'duration': '4 years',
    'eligibility': '10+2 with Physics, Chemistry, Biology/Mathematics',
    'entrance': 'JEE Main, JEE Advanced, State Engineering Entrance Exams',
    'subjects':
        'Molecular Biology, Biochemistry, Genetics, Bioprocess Engineering, Bioinformatics, Pharmaceutical Technology',
    'career_prospects':
        'Biotech Engineer, Research Scientist, Quality Control Manager, Process Development Engineer',
    'top_companies':
        'Biocon, Serum Institute, Dr. Reddy\'s, Cipla, Sun Pharma, Novartis',
    'average_salary': '₹3-8 LPA (Entry Level)',
    'further_studies': 'M.Tech in Biotechnology, MS, PhD in Life Sciences',
    'description':
        'Apply engineering principles to biological systems. Growing field in pharmaceuticals, agriculture, and healthcare.',
  },
  'B.Arch.': {
    'duration': '5 years',
    'eligibility': '10+2 with Mathematics and 50% marks',
    'entrance': 'NATA, JEE Main (Paper 2), State Architecture Entrance Exams',
    'subjects':
        'Architectural Design, Building Construction, History of Architecture, Structural Design, Environmental Studies',
    'career_prospects':
        'Architect, Urban Planner, Interior Designer, Landscape Architect, Project Manager',
    'top_companies':
        'L&T, Gensler, HOK, Perkins+Will, CPWD, Private Architecture Firms',
    'average_salary': '₹3-8 LPA (Entry Level)',
    'further_studies': 'M.Arch, MBA in Construction Management, PhD',
    'description':
        'Design and plan buildings and structures. Creative field combining art, science, and technology.',
  },
  'B.Sc. (Non-Medical)': {
    'duration': '3 years',
    'eligibility': '10+2 with Physics, Chemistry, Mathematics',
    'entrance': 'Direct admission based on merit',
    'subjects': 'Physics, Chemistry, Mathematics, Computer Science, Statistics',
    'career_prospects':
        'Data Analyst, Research Assistant, Lab Technician, Teacher, Government Jobs',
    'top_companies':
        'Research Institutes, Educational Institutions, Government Labs, Private Companies',
    'average_salary': '₹2-6 LPA (Entry Level)',
    'further_studies': 'M.Sc, B.Ed, MBA, M.Tech',
    'description':
        'Foundation in physical sciences and mathematics. Good base for higher studies and research.',
  },
  'B.Sc. (Medical)': {
    'duration': '3 years',
    'eligibility': '10+2 with Physics, Chemistry, Biology',
    'entrance': 'Direct admission based on merit',
    'subjects':
        'Physics, Chemistry, Biology, Mathematics, Environmental Science',
    'career_prospects':
        'Lab Technician, Research Assistant, Medical Representative, Teacher, Government Jobs',
    'top_companies':
        'Hospitals, Research Labs, Pharmaceutical Companies, Educational Institutions',
    'average_salary': '₹2-5 LPA (Entry Level)',
    'further_studies': 'M.Sc, B.Ed, MBBS, BDS, M.Tech',
    'description':
        'Foundation in life sciences. Good preparation for medical and allied health courses.',
  },
  'B.A.': {
    'duration': '3 years',
    'eligibility': '10+2 in any stream',
    'entrance': 'Direct admission based on merit',
    'subjects':
        'Literature, History, Political Science, Economics, Sociology, Psychology',
    'career_prospects':
        'Teacher, Journalist, Writer, Social Worker, Government Jobs, Civil Services',
    'top_companies':
        'Educational Institutions, Media Houses, NGOs, Government Departments',
    'average_salary': '₹2-5 LPA (Entry Level)',
    'further_studies': 'M.A, B.Ed, MBA, LLB, Civil Services Preparation',
    'description':
        'Broad foundation in humanities and social sciences. Develops critical thinking and communication skills.',
  },
  'B.Com': {
    'duration': '3 years',
    'eligibility': '10+2 in any stream',
    'entrance': 'Direct admission based on merit',
    'subjects':
        'Accounting, Business Studies, Economics, Mathematics, Statistics, Computer Applications',
    'career_prospects':
        'Accountant, Financial Analyst, Banker, Tax Consultant, Business Executive',
    'top_companies':
        'Banks, CA Firms, Corporate Houses, Government Departments, Insurance Companies',
    'average_salary': '₹2-6 LPA (Entry Level)',
    'further_studies': 'M.Com, MBA, CA, CS, CMA',
    'description':
        'Foundation in commerce and business. Good preparation for professional courses and business careers.',
  },
  'B.B.A.': {
    'duration': '3 years',
    'eligibility': '10+2 in any stream',
    'entrance': 'Direct admission based on merit',
    'subjects':
        'Management Principles, Marketing, Finance, Human Resources, Operations, Business Law',
    'career_prospects':
        'Business Analyst, Marketing Executive, HR Executive, Operations Manager, Entrepreneur',
    'top_companies':
        'Corporate Houses, Consulting Firms, Banks, E-commerce Companies',
    'average_salary': '₹3-7 LPA (Entry Level)',
    'further_studies': 'MBA, M.Com, Professional Certifications',
    'description':
        'Foundation in business administration. Develops managerial and leadership skills.',
  },
  'B.C.A.': {
    'duration': '3 years',
    'eligibility': '10+2 in any stream',
    'entrance': 'Direct admission based on merit',
    'subjects':
        'Programming, Database Management, Web Development, Software Engineering, Computer Networks',
    'career_prospects':
        'Software Developer, Web Developer, System Analyst, Database Administrator',
    'top_companies':
        'IT Companies, Software Development Firms, E-commerce Companies',
    'average_salary': '₹2-8 LPA (Entry Level)',
    'further_studies': 'M.C.A, M.Tech, MBA in IT',
    'description':
        'Foundation in computer applications and programming. Good entry point into IT industry.',
  },
  'B.Sc. (Hons.)': {
    'duration': '3 years',
    'eligibility': '10+2 with Physics, Chemistry, Mathematics/Biology',
    'entrance': 'Direct admission based on merit',
    'subjects':
        'Advanced Physics, Chemistry, Mathematics, Specialized subjects in chosen field',
    'career_prospects':
        'Research Scientist, Lab Technician, Data Analyst, Teacher, Government Jobs',
    'top_companies':
        'Research Institutes, Educational Institutions, Government Labs, Private Companies',
    'average_salary': '₹2-7 LPA (Entry Level)',
    'further_studies': 'M.Sc, B.Ed, MBA, M.Tech, PhD',
    'description':
        'Specialized undergraduate program with in-depth study in specific science subjects. Excellent foundation for research and higher studies.',
  },
  'B.Sc. (IT)': {
    'duration': '3 years',
    'eligibility': '10+2 in any stream',
    'entrance': 'Direct admission based on merit',
    'subjects':
        'Programming Languages, Database Management, Web Technologies, Software Engineering, Computer Networks, Information Security',
    'career_prospects':
        'Software Developer, Web Developer, System Administrator, IT Support Specialist, Database Administrator',
    'top_companies':
        'IT Companies, Software Development Firms, E-commerce Companies, Startups',
    'average_salary': '₹2-8 LPA (Entry Level)',
    'further_studies': 'M.Sc IT, M.C.A, M.Tech, MBA in IT',
    'description':
        'Focus on information technology and computer applications. Practical approach to software development and IT solutions.',
  },
  'B.A. (Hons.)': {
    'duration': '3 years',
    'eligibility': '10+2 in any stream',
    'entrance': 'Direct admission based on merit',
    'subjects':
        'Specialized subjects in chosen discipline (History, Political Science, Economics, Literature, etc.)',
    'career_prospects':
        'Teacher, Researcher, Journalist, Writer, Civil Services, Government Jobs',
    'top_companies':
        'Educational Institutions, Research Organizations, Media Houses, Government Departments',
    'average_salary': '₹2-6 LPA (Entry Level)',
    'further_studies': 'M.A, B.Ed, MBA, LLB, Civil Services Preparation',
    'description':
        'Specialized undergraduate program with focused study in specific humanities subjects. Develops expertise in chosen field.',
  },
  'B.Com. (Hons.)': {
    'duration': '3 years',
    'eligibility': '10+2 in any stream',
    'entrance': 'Direct admission based on merit',
    'subjects':
        'Advanced Accounting, Business Studies, Economics, Mathematics, Statistics, Computer Applications, Business Law',
    'career_prospects':
        'Chartered Accountant, Financial Analyst, Investment Banker, Tax Consultant, Business Executive',
    'top_companies':
        'Big 4 CA Firms, Banks, Corporate Houses, Government Departments, Insurance Companies',
    'average_salary': '₹3-8 LPA (Entry Level)',
    'further_studies': 'M.Com, MBA, CA, CS, CMA, CFA',
    'description':
        'Advanced commerce program with deeper understanding of business and finance. Excellent preparation for professional courses.',
  },
  'BBA': {
    'duration': '3 years',
    'eligibility': '10+2 in any stream',
    'entrance': 'Direct admission based on merit',
    'subjects':
        'Management Principles, Marketing, Finance, Human Resources, Operations, Business Law, Entrepreneurship',
    'career_prospects':
        'Business Analyst, Marketing Executive, HR Executive, Operations Manager, Entrepreneur, Management Trainee',
    'top_companies':
        'Corporate Houses, Consulting Firms, Banks, E-commerce Companies, Startups',
    'average_salary': '₹3-8 LPA (Entry Level)',
    'further_studies': 'MBA, M.Com, Professional Certifications, PGDM',
    'description':
        'Foundation in business administration with focus on management skills. Develops leadership and entrepreneurial abilities.',
  },
  'BCA': {
    'duration': '3 years',
    'eligibility': '10+2 in any stream',
    'entrance': 'Direct admission based on merit',
    'subjects':
        'Programming Languages, Database Management, Web Development, Software Engineering, Computer Networks, System Analysis',
    'career_prospects':
        'Software Developer, Web Developer, System Analyst, Database Administrator, IT Consultant',
    'top_companies':
        'IT Companies, Software Development Firms, E-commerce Companies, Tech Startups',
    'average_salary': '₹2-8 LPA (Entry Level)',
    'further_studies': 'M.C.A, M.Tech, MBA in IT, MS in Computer Science',
    'description':
        'Comprehensive computer applications program covering programming, database management, and software development.',
  },
  'B.Ed.': {
    'duration': '2 years',
    'eligibility': 'Graduation in any stream with 50% marks',
    'entrance': 'Direct admission based on merit',
    'subjects':
        'Educational Psychology, Teaching Methods, School Management, Educational Technology, Subject-specific Pedagogy',
    'career_prospects':
        'Teacher, Education Officer, Curriculum Developer, Educational Consultant, School Administrator',
    'top_companies':
        'Schools, Colleges, Educational Institutions, Government Education Departments, Private Coaching Centers',
    'average_salary': '₹2-6 LPA (Entry Level)',
    'further_studies': 'M.Ed, M.A in Education, PhD in Education',
    'description':
        'Professional degree for teaching career. Develops pedagogical skills and understanding of educational systems.',
  },
  'B.P.Ed.': {
    'duration': '2 years',
    'eligibility': 'Graduation in any stream with 50% marks',
    'entrance': 'Direct admission based on merit',
    'subjects':
        'Sports Psychology, Exercise Physiology, Sports Management, Coaching Methods, Health Education, Sports Medicine',
    'career_prospects':
        'Physical Education Teacher, Sports Coach, Fitness Trainer, Sports Manager, Recreation Officer',
    'top_companies':
        'Schools, Colleges, Sports Academies, Fitness Centers, Government Sports Departments',
    'average_salary': '₹2-5 LPA (Entry Level)',
    'further_studies':
        'M.P.Ed, M.A in Physical Education, PhD in Sports Science',
    'description':
        'Professional degree for physical education and sports career. Focuses on sports training and fitness education.',
  },
  'LL.B.': {
    'duration': '3 years',
    'eligibility': 'Graduation in any stream with 45% marks',
    'entrance': 'CLAT, AILET, State Law Entrance Exams',
    'subjects':
        'Constitutional Law, Criminal Law, Civil Law, Corporate Law, International Law, Legal Writing',
    'career_prospects':
        'Lawyer, Legal Advisor, Judge, Public Prosecutor, Corporate Legal Counsel, Legal Researcher',
    'top_companies':
        'Law Firms, Corporate Legal Departments, Government Legal Services, Courts, NGOs',
    'average_salary': '₹3-10 LPA (Entry Level)',
    'further_studies': 'LL.M, MBA in Law, PhD in Law, Judicial Services',
    'description':
        'Professional degree for legal career. Develops understanding of law and legal systems. Essential for practicing law.',
  },
  'B.Lib.I.Sc.': {
    'duration': '1 year',
    'eligibility': 'Graduation in any stream',
    'entrance': 'Direct admission based on merit',
    'subjects':
        'Library Science, Information Management, Cataloging, Classification, Digital Libraries, Research Methods',
    'career_prospects':
        'Librarian, Information Officer, Research Assistant, Archivist, Knowledge Manager',
    'top_companies':
        'Libraries, Educational Institutions, Research Organizations, Government Departments, Corporate Libraries',
    'average_salary': '₹2-5 LPA (Entry Level)',
    'further_studies':
        'M.Lib.I.Sc, PhD in Library Science, MBA in Information Management',
    'description':
        'Professional degree for library and information science career. Focuses on information management and library operations.',
  },
  // Medical Courses
  'MBBS': {
    'duration': '5.5 years (4.5 years + 1 year internship)',
    'eligibility': '10+2 with Physics, Chemistry, Biology (PCB) and 50% marks',
    'entrance': 'NEET-UG (National Eligibility cum Entrance Test)',
    'subjects':
        'Anatomy, Physiology, Biochemistry, Pathology, Pharmacology, Medicine, Surgery, Obstetrics & Gynecology, Pediatrics, Community Medicine',
    'career_prospects':
        'Doctor, Medical Officer, General Practitioner, Specialist Doctor, Medical Researcher',
    'top_companies':
        'Hospitals, Clinics, Government Health Services, Private Healthcare, Medical Research Institutes',
    'average_salary': '₹5-15 LPA (Entry Level)',
    'further_studies': 'MD/MS, DM/MCh, PhD in Medical Sciences',
    'description':
        'Undergraduate medical degree to become a doctor. Comprehensive study of human body, diseases, and medical treatment.',
  },
  'B.Sc. Nursing': {
    'duration': '4 years',
    'eligibility': '10+2 with Physics, Chemistry, Biology (PCB) and 45% marks',
    'entrance': 'NEET-UG, State Nursing Entrance Exams',
    'subjects':
        'Anatomy, Physiology, Microbiology, Pharmacology, Medical-Surgical Nursing, Community Health Nursing, Mental Health Nursing',
    'career_prospects':
        'Staff Nurse, Nursing Officer, Public Health Nurse, Nursing Supervisor, Nursing Educator',
    'top_companies':
        'Hospitals, Nursing Homes, Community Health Centers, Government Health Services, Private Healthcare',
    'average_salary': '₹3-8 LPA (Entry Level)',
    'further_studies': 'M.Sc. Nursing, M.Phil, PhD in Nursing',
    'description':
        'Professional nursing degree focusing on patient care, health promotion, and disease prevention.',
  },
  'B.Sc. Medical Technology': {
    'duration': '3 years',
    'eligibility': '10+2 with Physics, Chemistry, Biology (PCB) and 50% marks',
    'entrance': 'Direct admission based on merit',
    'subjects':
        'Anatomy, Physiology, Biochemistry, Pathology, Microbiology, Medical Equipment, Laboratory Techniques',
    'career_prospects':
        'Medical Technologist, Lab Technician, Diagnostic Technician, Research Assistant, Quality Control Officer',
    'top_companies':
        'Hospitals, Diagnostic Labs, Research Institutes, Pharmaceutical Companies, Government Health Services',
    'average_salary': '₹2-6 LPA (Entry Level)',
    'further_studies': 'M.Sc. Medical Technology, M.Phil, PhD',
    'description':
        'Focus on medical laboratory techniques, diagnostic procedures, and medical equipment operation.',
  },
  'B.Sc. Radiography': {
    'duration': '3 years',
    'eligibility': '10+2 with Physics, Chemistry, Biology (PCB) and 50% marks',
    'entrance': 'Direct admission based on merit',
    'subjects':
        'Anatomy, Physiology, Physics, Radiographic Techniques, Radiation Physics, Patient Care, Medical Imaging',
    'career_prospects':
        'Radiographer, X-ray Technician, CT/MRI Technician, Radiation Safety Officer, Medical Imaging Specialist',
    'top_companies':
        'Hospitals, Diagnostic Centers, Imaging Centers, Government Health Services, Private Healthcare',
    'average_salary': '₹2-7 LPA (Entry Level)',
    'further_studies': 'M.Sc. Radiography, M.Phil, PhD',
    'description':
        'Specialized course in medical imaging techniques including X-ray, CT, MRI, and ultrasound.',
  },
  'B.Sc. Physiotherapy': {
    'duration': '4 years',
    'eligibility': '10+2 with Physics, Chemistry, Biology (PCB) and 50% marks',
    'entrance': 'Direct admission based on merit',
    'subjects':
        'Anatomy, Physiology, Pathology, Physiotherapy Techniques, Exercise Therapy, Electrotherapy, Manual Therapy',
    'career_prospects':
        'Physiotherapist, Sports Physiotherapist, Rehabilitation Specialist, Pain Management Specialist',
    'top_companies':
        'Hospitals, Rehabilitation Centers, Sports Clinics, Fitness Centers, Private Practice',
    'average_salary': '₹3-8 LPA (Entry Level)',
    'further_studies': 'M.Sc. Physiotherapy, M.Phil, PhD',
    'description':
        'Focus on physical therapy, rehabilitation, and movement disorders treatment.',
  },
  'B.Sc. Optometry': {
    'duration': '3 years',
    'eligibility': '10+2 with Physics, Chemistry, Biology (PCB) and 50% marks',
    'entrance': 'Direct admission based on merit',
    'subjects':
        'Anatomy, Physiology, Optics, Ocular Anatomy, Vision Science, Contact Lens Practice, Low Vision',
    'career_prospects':
        'Optometrist, Vision Care Specialist, Contact Lens Specialist, Low Vision Therapist',
    'top_companies':
        'Eye Hospitals, Optical Stores, Vision Care Centers, Government Health Services',
    'average_salary': '₹2-6 LPA (Entry Level)',
    'further_studies': 'M.Sc. Optometry, M.Phil, PhD',
    'description':
        'Specialized course in eye care, vision testing, and optical correction.',
  },
  'B.Sc. Medical Laboratory Technology': {
    'duration': '3 years',
    'eligibility': '10+2 with Physics, Chemistry, Biology (PCB) and 50% marks',
    'entrance': 'Direct admission based on merit',
    'subjects':
        'Anatomy, Physiology, Biochemistry, Pathology, Microbiology, Hematology, Clinical Chemistry',
    'career_prospects':
        'Medical Lab Technologist, Clinical Lab Technician, Quality Control Officer, Research Assistant',
    'top_companies':
        'Hospitals, Diagnostic Labs, Research Institutes, Pharmaceutical Companies, Government Labs',
    'average_salary': '₹2-6 LPA (Entry Level)',
    'further_studies': 'M.Sc. Medical Lab Technology, M.Phil, PhD',
    'description':
        'Focus on laboratory testing, diagnostic procedures, and medical analysis.',
  },
};

const List<Degree> degrees = [
  // Engineering Degrees
  Degree(
      name: 'B.Tech. Computer Science & Engineering',
      relatedCareers: ['engineering', 'computer-science']),
  Degree(
      name: 'B.Tech. Electrical Engineering', relatedCareers: ['engineering']),
  Degree(
      name: 'B.Tech. Mechanical Engineering', relatedCareers: ['engineering']),
  Degree(name: 'B.Tech. Civil Engineering', relatedCareers: ['engineering']),
  Degree(name: 'B.Tech. Chemical Engineering', relatedCareers: ['engineering']),
  Degree(
      name: 'B.Tech. Electronics & Communication Engineering',
      relatedCareers: ['engineering']),
  Degree(
      name: 'B.Tech. Information Technology',
      relatedCareers: ['engineering', 'computer-science']),
  Degree(
      name: 'B.Tech. Biotechnology',
      relatedCareers: ['engineering', 'horticulture']),
  Degree(name: 'B.Arch.', relatedCareers: ['engineering', 'handicrafts']),
  // Science Degrees
  Degree(
      name: 'B.Sc. (Non-Medical)',
      relatedCareers: ['computer-science', 'horticulture']),
  Degree(name: 'B.Sc. (Medical)', relatedCareers: ['horticulture']),
  Degree(
      name: 'B.Sc. (Hons.)',
      relatedCareers: ['computer-science', 'horticulture']),
  Degree(name: 'B.Sc. (IT)', relatedCareers: ['computer-science']),
  // Arts Degrees
  Degree(name: 'B.A.', relatedCareers: [
    'humanities-media',
    'public-administration-kas',
    'handicrafts'
  ]),
  Degree(name: 'B.A. (Hons.)', relatedCareers: [
    'humanities-media',
    'public-administration-kas',
    'handicrafts'
  ]),
  // Commerce Degrees
  Degree(name: 'B.Com', relatedCareers: [
    'commerce-finance',
    'public-administration-kas',
    'tourism-hospitality'
  ]),
  Degree(name: 'B.Com. (Hons.)', relatedCareers: [
    'commerce-finance',
    'public-administration-kas',
    'tourism-hospitality'
  ]),
  Degree(
      name: 'BBA', relatedCareers: ['tourism-hospitality', 'commerce-finance']),
  Degree(name: 'BCA', relatedCareers: ['computer-science']),
  // Professional Degrees
  Degree(name: 'B.Ed.', relatedCareers: ['humanities-media']),
  Degree(name: 'B.P.Ed.', relatedCareers: ['humanities-media']),
  Degree(name: 'LL.B.', relatedCareers: ['public-administration-kas']),
  Degree(name: 'B.Lib.I.Sc.', relatedCareers: ['humanities-media']),
  // Medical Degrees
  Degree(name: 'MBBS', relatedCareers: ['medical-healthcare']),
  Degree(name: 'B.Sc. Nursing', relatedCareers: ['medical-healthcare']),
  Degree(
      name: 'B.Sc. Medical Technology', relatedCareers: ['medical-healthcare']),
  Degree(name: 'B.Sc. Radiography', relatedCareers: ['medical-healthcare']),
  Degree(name: 'B.Sc. Physiotherapy', relatedCareers: ['medical-healthcare']),
  Degree(name: 'B.Sc. Optometry', relatedCareers: ['medical-healthcare']),
  Degree(
      name: 'B.Sc. Medical Laboratory Technology',
      relatedCareers: ['medical-healthcare']),
];
