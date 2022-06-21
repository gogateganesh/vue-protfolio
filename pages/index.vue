<template>
<div>
    <!-- Personal details -->
    <v-row justify="center" align="center">
        <v-col cols="12" sm="10" md="10">
            <v-card>
                <v-card-title class="headline">
                    Mr. Ganesh Narayan Gogate
                </v-card-title>
                <v-row>
                    <v-col sm="10" md="5">
                        <v-container>
                            <img src="../static/GANESH.jpg" height="300" />
                        </v-container>
                    </v-col>
                    <v-col sm="10" md="5">
                        <v-container>
                            <b>Address</b>
                            <p>{{Address}}</p>
                            <b>Age</b>
                            <p>{{Age}}</p>
                            <b>Email</b>
                            <p>{{Email}}</p>
                            <b>Phone</b>
                            <p>+{{Phone}}</p>
                            <b>Career Objective</b>
                            <p>{{CareerObjective}}</p>
                        </v-container>
                    </v-col>
                </v-row>
            </v-card>
        </v-col>
    </v-row>
    <!-- Education Details -->
    <v-row justify="center" align="center">
        <v-col cols="12" sm="10" md="10">
            <v-card>
                <v-card-title>
                    Educational Details
                </v-card-title>
                <v-simple-table>
                    <template v-slot:default>
                        <thead>
                            <tr>
                                <th class="text-center">
                                    Exam
                                </th>
                                <th class="text-center">
                                    Year of passing
                                </th>
                                <th class="text-center">
                                    Collage/Institution
                                </th>
                                <th class="text-center">
                                    Percentage
                                </th>
                            </tr>

                        </thead>
                        <tbody>
                            <tr>
                                <td>CDAC</td>
                                <td>2021</td>
                                <td>Know-IT</td>
                                <td>69.83%</td>
                            </tr>
                            <tr>
                                <td>BE(IT)</td>
                                <td>2019</td>
                                <td>D.K.T.E. Textile and EngineeringInstitute, Ichalkaranji</td>
                                <td>65%</td>
                            </tr>
                            <tr>
                                <td>Diploma&nbsp;</td>
                                <td>2015</td>
                                <td>DR.D.Y.Patil Polytechnic, kolhapur</td>
                                <td>62%</td>
                            </tr>
                            <tr>
                                <td>SSC</td>
                                <td>2012</td>
                                <td>Hanumantrao chate school, kolhapur</td>
                                <td>72.40%</td>
                            </tr>
                        </tbody>
                    </template>
                </v-simple-table>
            </v-card>
        </v-col>
    </v-row>
    <!-- timeline -->
    <v-row justify="center" align="center">
        <v-col cols="12" sm="10" md="10">
            <h2 class="text-center">Timeline</h2>
            <template>
                <v-timeline>
                    <v-timeline-item v-for="(year, i) in years" :key="i" :color="year.color" small>
                        <template v-slot:opposite>
                            <span :class="`headline font-weight-bold ${year.color}--text`" v-text="year.year"></span>
                        </template>
                        <div class="">
                            <h2 :class="`headline font-weight-light mb-4 ${year.color}--text`">
                                {{year.title}}
                            </h2>
                            <div>
                                {{year.desc}}
                            </div>
                        </div>
                    </v-timeline-item>
                </v-timeline>
            </template>
        </v-col>
    </v-row>
    <v-row justify="center" align="center">
        <v-col cols="12" sm="10" md="10">
            <v-card>
                <v-card-title></v-card-title>
            <v-row style="margin-left:20%">
                <v-col cols="2">
                    <img src="../static/GANESH.jpg" height="100" alt="">
                </v-col>
                <v-col cols="2">
                    <img src="../static/GANESH.jpg" height="100" alt="">
                </v-col>
                <v-col cols="2">
                    <img src="../static/GANESH.jpg" height="100" alt="">
                </v-col>
                <v-col cols="2">
                    <img src="../static/GANESH.jpg" height="100" alt="">
                </v-col>
            </v-row>
            </v-card>
        </v-col>
    </v-row>
</div>
</template>

<script>
export default {
    name: 'IndexPage',
    data() {
        return {
            Address: null,
            Age: null,
            Phone: null,
            Email: null,
            CareerObjective: null,
            years: [{
                    color: 'amber',
                    year: '2019',
                    title: 'Graduation (BE)',
                    desc: 'Completed graduation in information technology'
                },
                {
                    color: 'blue',
                    year: '2020',
                    title: 'Ncircle Technology pvt ltd',
                    desc: 'Worked as the member of technical staff'
                },
                {
                    color: 'amber',
                    year: '2021',
                    title: 'CDAC',
                    desc: 'Completed Post Graduate Diploma courses of C-DAC \n'
                },
                {
                    color: 'blue',
                    year: '2022',
                    title: 'Aventior Digital pvt ltd',
                    desc: 'Working as the frontend developer (VueJS Developer)'
                },
            ]
        }
    },
    mounted() {
        this.Address = process.env.Address;
        this.Age = process.env.Age;
        this.Phone = process.env.Number;
        this.CareerObjective = process.env.CareerObjective;
        this.Email = process.env.Email

    }
}
</script>

<style scoped>
img {
    border-radius: 10px;
}

#usedTech {
    margin-top: 10rem;
}

td {
    text-align: center;
}

v-col.img{
    margin: 20px;
}
</style>
