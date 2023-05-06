module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 2] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 2] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<2xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<2xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v6_0", "v1_0"], llvm.emit_c_interface, output_names = ["v4_0", "v5_0", "v3_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %13 = llvm.insertvalue %arg11, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %14 = llvm.insertvalue %arg12, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %15 = llvm.insertvalue %arg13, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %16 = llvm.mlir.constant(1 : i64) : i64
    %17 = llvm.mlir.constant(0 : i32) : i32
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<2 x i64>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<2 x i64>> to !llvm.ptr<i64>
    %22 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %23 = llvm.insertvalue %21, %22[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.insertvalue %21, %23[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = llvm.insertvalue %25, %24[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.mlir.constant(2 : index) : i64
    %28 = llvm.insertvalue %27, %26[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.insertvalue %29, %28[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %32 = llvm.bitcast %31 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %33 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %34 = llvm.insertvalue %32, %33[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %35 = llvm.insertvalue %32, %34[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.insertvalue %36, %35[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %38 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<2 x i64>>
    %39 = llvm.bitcast %38 : !llvm.ptr<array<2 x i64>> to !llvm.ptr<i64>
    %40 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %41 = llvm.insertvalue %39, %40[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.insertvalue %39, %41[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.constant(0 : index) : i64
    %44 = llvm.insertvalue %43, %42[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.constant(2 : index) : i64
    %46 = llvm.insertvalue %45, %44[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.insertvalue %47, %46[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.constant(2 : index) : i64
    %51 = llvm.mlir.constant(2 : index) : i64
    %52 = llvm.mlir.constant(2 : index) : i64
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.mlir.constant(4 : index) : i64
    %55 = llvm.mlir.constant(8 : index) : i64
    %56 = llvm.mlir.constant(8 : index) : i64
    %57 = llvm.mlir.null : !llvm.ptr<i32>
    %58 = llvm.getelementptr %57[%56] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %59 = llvm.ptrtoint %58 : !llvm.ptr<i32> to i64
    %60 = llvm.mlir.constant(16 : index) : i64
    %61 = llvm.add %59, %60  : i64
    %62 = llvm.call @malloc(%61) : (i64) -> !llvm.ptr<i8>
    %63 = llvm.bitcast %62 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %64 = llvm.ptrtoint %63 : !llvm.ptr<i32> to i64
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.sub %60, %65  : i64
    %67 = llvm.add %64, %66  : i64
    %68 = llvm.urem %67, %60  : i64
    %69 = llvm.sub %67, %68  : i64
    %70 = llvm.inttoptr %69 : i64 to !llvm.ptr<i32>
    %71 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %72 = llvm.insertvalue %63, %71[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.insertvalue %70, %72[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.mlir.constant(0 : index) : i64
    %75 = llvm.insertvalue %74, %73[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.insertvalue %49, %75[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.insertvalue %50, %76[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.insertvalue %51, %77[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.insertvalue %52, %78[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.insertvalue %55, %79[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.insertvalue %54, %80[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.insertvalue %52, %81[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.insertvalue %53, %82[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.mlir.constant(0 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%84 : i64)
  ^bb1(%87: i64):  // 2 preds: ^bb0, ^bb11
    %88 = llvm.icmp "slt" %87, %85 : i64
    llvm.cond_br %88, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %89 = llvm.mlir.constant(0 : index) : i64
    %90 = llvm.mlir.constant(2 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%89 : i64)
  ^bb3(%92: i64):  // 2 preds: ^bb2, ^bb10
    %93 = llvm.icmp "slt" %92, %90 : i64
    llvm.cond_br %93, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %94 = llvm.mlir.constant(0 : index) : i64
    %95 = llvm.mlir.constant(2 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%94 : i64)
  ^bb5(%97: i64):  // 2 preds: ^bb4, ^bb9
    %98 = llvm.icmp "slt" %97, %95 : i64
    llvm.cond_br %98, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %99 = llvm.mlir.constant(0 : index) : i64
    %100 = llvm.mlir.constant(2 : index) : i64
    %101 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%99 : i64)
  ^bb7(%102: i64):  // 2 preds: ^bb6, ^bb8
    %103 = llvm.icmp "slt" %102, %100 : i64
    llvm.cond_br %103, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %104 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.mlir.constant(8 : index) : i64
    %106 = llvm.mul %87, %105  : i64
    %107 = llvm.mlir.constant(4 : index) : i64
    %108 = llvm.mul %92, %107  : i64
    %109 = llvm.add %106, %108  : i64
    %110 = llvm.mlir.constant(2 : index) : i64
    %111 = llvm.mul %97, %110  : i64
    %112 = llvm.add %109, %111  : i64
    %113 = llvm.add %112, %102  : i64
    %114 = llvm.getelementptr %104[%113] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %115 = llvm.load %114 : !llvm.ptr<i32>
    %116 = llvm.sub %17, %115  : i32
    %117 = llvm.extractvalue %83[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.mlir.constant(8 : index) : i64
    %119 = llvm.mul %87, %118  : i64
    %120 = llvm.mlir.constant(4 : index) : i64
    %121 = llvm.mul %92, %120  : i64
    %122 = llvm.add %119, %121  : i64
    %123 = llvm.mlir.constant(2 : index) : i64
    %124 = llvm.mul %97, %123  : i64
    %125 = llvm.add %122, %124  : i64
    %126 = llvm.add %125, %102  : i64
    %127 = llvm.getelementptr %117[%126] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %116, %127 : !llvm.ptr<i32>
    %128 = llvm.add %102, %101  : i64
    llvm.br ^bb7(%128 : i64)
  ^bb9:  // pred: ^bb7
    %129 = llvm.add %97, %96  : i64
    llvm.br ^bb5(%129 : i64)
  ^bb10:  // pred: ^bb5
    %130 = llvm.add %92, %91  : i64
    llvm.br ^bb3(%130 : i64)
  ^bb11:  // pred: ^bb3
    %131 = llvm.add %87, %86  : i64
    llvm.br ^bb1(%131 : i64)
  ^bb12:  // pred: ^bb1
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.mlir.constant(2 : index) : i64
    %134 = llvm.mlir.constant(2 : index) : i64
    %135 = llvm.mlir.constant(2 : index) : i64
    %136 = llvm.mlir.constant(1 : index) : i64
    %137 = llvm.mlir.constant(4 : index) : i64
    %138 = llvm.mlir.constant(8 : index) : i64
    %139 = llvm.mlir.constant(8 : index) : i64
    %140 = llvm.mlir.null : !llvm.ptr<i32>
    %141 = llvm.getelementptr %140[%139] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %142 = llvm.ptrtoint %141 : !llvm.ptr<i32> to i64
    %143 = llvm.mlir.constant(16 : index) : i64
    %144 = llvm.add %142, %143  : i64
    %145 = llvm.call @malloc(%144) : (i64) -> !llvm.ptr<i8>
    %146 = llvm.bitcast %145 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %147 = llvm.ptrtoint %146 : !llvm.ptr<i32> to i64
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.sub %143, %148  : i64
    %150 = llvm.add %147, %149  : i64
    %151 = llvm.urem %150, %143  : i64
    %152 = llvm.sub %150, %151  : i64
    %153 = llvm.inttoptr %152 : i64 to !llvm.ptr<i32>
    %154 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %155 = llvm.insertvalue %146, %154[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.insertvalue %153, %155[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.mlir.constant(0 : index) : i64
    %158 = llvm.insertvalue %157, %156[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.insertvalue %132, %158[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.insertvalue %133, %159[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.insertvalue %134, %160[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.insertvalue %135, %161[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.insertvalue %138, %162[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.insertvalue %137, %163[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.insertvalue %135, %164[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.insertvalue %136, %165[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.mlir.constant(0 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%167 : i64)
  ^bb13(%170: i64):  // 2 preds: ^bb12, ^bb23
    %171 = llvm.icmp "slt" %170, %168 : i64
    llvm.cond_br %171, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %172 = llvm.mlir.constant(0 : index) : i64
    %173 = llvm.mlir.constant(2 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%172 : i64)
  ^bb15(%175: i64):  // 2 preds: ^bb14, ^bb22
    %176 = llvm.icmp "slt" %175, %173 : i64
    llvm.cond_br %176, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %177 = llvm.mlir.constant(0 : index) : i64
    %178 = llvm.mlir.constant(2 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%177 : i64)
  ^bb17(%180: i64):  // 2 preds: ^bb16, ^bb21
    %181 = llvm.icmp "slt" %180, %178 : i64
    llvm.cond_br %181, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %182 = llvm.mlir.constant(0 : index) : i64
    %183 = llvm.mlir.constant(2 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%182 : i64)
  ^bb19(%185: i64):  // 2 preds: ^bb18, ^bb20
    %186 = llvm.icmp "slt" %185, %183 : i64
    llvm.cond_br %186, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %187 = llvm.extractvalue %83[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.mlir.constant(8 : index) : i64
    %189 = llvm.mul %170, %188  : i64
    %190 = llvm.mlir.constant(4 : index) : i64
    %191 = llvm.mul %175, %190  : i64
    %192 = llvm.add %189, %191  : i64
    %193 = llvm.mlir.constant(2 : index) : i64
    %194 = llvm.mul %180, %193  : i64
    %195 = llvm.add %192, %194  : i64
    %196 = llvm.add %195, %185  : i64
    %197 = llvm.getelementptr %187[%196] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %198 = llvm.load %197 : !llvm.ptr<i32>
    %199 = llvm.mlir.constant(false) : i1
    %200 = "llvm.intr.abs"(%198, %199) : (i32, i1) -> i32
    %201 = llvm.extractvalue %166[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %202 = llvm.mlir.constant(8 : index) : i64
    %203 = llvm.mul %170, %202  : i64
    %204 = llvm.mlir.constant(4 : index) : i64
    %205 = llvm.mul %175, %204  : i64
    %206 = llvm.add %203, %205  : i64
    %207 = llvm.mlir.constant(2 : index) : i64
    %208 = llvm.mul %180, %207  : i64
    %209 = llvm.add %206, %208  : i64
    %210 = llvm.add %209, %185  : i64
    %211 = llvm.getelementptr %201[%210] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %200, %211 : !llvm.ptr<i32>
    %212 = llvm.add %185, %184  : i64
    llvm.br ^bb19(%212 : i64)
  ^bb21:  // pred: ^bb19
    %213 = llvm.add %180, %179  : i64
    llvm.br ^bb17(%213 : i64)
  ^bb22:  // pred: ^bb17
    %214 = llvm.add %175, %174  : i64
    llvm.br ^bb15(%214 : i64)
  ^bb23:  // pred: ^bb15
    %215 = llvm.add %170, %169  : i64
    llvm.br ^bb13(%215 : i64)
  ^bb24:  // pred: ^bb13
    %216 = llvm.mlir.constant(2 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    %218 = llvm.mlir.null : !llvm.ptr<i64>
    %219 = llvm.getelementptr %218[%216] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %220 = llvm.ptrtoint %219 : !llvm.ptr<i64> to i64
    %221 = llvm.mlir.constant(16 : index) : i64
    %222 = llvm.add %220, %221  : i64
    %223 = llvm.call @malloc(%222) : (i64) -> !llvm.ptr<i8>
    %224 = llvm.bitcast %223 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %225 = llvm.ptrtoint %224 : !llvm.ptr<i64> to i64
    %226 = llvm.mlir.constant(1 : index) : i64
    %227 = llvm.sub %221, %226  : i64
    %228 = llvm.add %225, %227  : i64
    %229 = llvm.urem %228, %221  : i64
    %230 = llvm.sub %228, %229  : i64
    %231 = llvm.inttoptr %230 : i64 to !llvm.ptr<i64>
    %232 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %233 = llvm.insertvalue %224, %232[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %234 = llvm.insertvalue %231, %233[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %235 = llvm.mlir.constant(0 : index) : i64
    %236 = llvm.insertvalue %235, %234[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %237 = llvm.insertvalue %216, %236[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %238 = llvm.insertvalue %217, %237[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %239 = llvm.mlir.constant(0 : index) : i64
    %240 = llvm.mlir.constant(2 : index) : i64
    %241 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%239 : i64)
  ^bb25(%242: i64):  // 2 preds: ^bb24, ^bb26
    %243 = llvm.icmp "slt" %242, %240 : i64
    llvm.cond_br %243, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %244 = llvm.extractvalue %238[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %245 = llvm.getelementptr %244[%242] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %16, %245 : !llvm.ptr<i64>
    %246 = llvm.add %242, %241  : i64
    llvm.br ^bb25(%246 : i64)
  ^bb27:  // pred: ^bb25
    %247 = llvm.mlir.constant(2 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.mlir.null : !llvm.ptr<i64>
    %250 = llvm.getelementptr %249[%247] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %251 = llvm.ptrtoint %250 : !llvm.ptr<i64> to i64
    %252 = llvm.mlir.constant(16 : index) : i64
    %253 = llvm.add %251, %252  : i64
    %254 = llvm.call @malloc(%253) : (i64) -> !llvm.ptr<i8>
    %255 = llvm.bitcast %254 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %256 = llvm.ptrtoint %255 : !llvm.ptr<i64> to i64
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.sub %252, %257  : i64
    %259 = llvm.add %256, %258  : i64
    %260 = llvm.urem %259, %252  : i64
    %261 = llvm.sub %259, %260  : i64
    %262 = llvm.inttoptr %261 : i64 to !llvm.ptr<i64>
    %263 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %264 = llvm.insertvalue %255, %263[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %265 = llvm.insertvalue %262, %264[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %266 = llvm.mlir.constant(0 : index) : i64
    %267 = llvm.insertvalue %266, %265[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %268 = llvm.insertvalue %247, %267[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %269 = llvm.insertvalue %248, %268[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %270 = llvm.mlir.constant(0 : index) : i64
    %271 = llvm.mlir.constant(2 : index) : i64
    %272 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%270 : i64)
  ^bb28(%273: i64):  // 2 preds: ^bb27, ^bb29
    %274 = llvm.icmp "slt" %273, %271 : i64
    llvm.cond_br %274, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %275 = llvm.extractvalue %238[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %276 = llvm.getelementptr %275[%273] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %277 = llvm.load %276 : !llvm.ptr<i64>
    %278 = llvm.extractvalue %37[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %279 = llvm.load %278 : !llvm.ptr<i64>
    %280 = llvm.mul %277, %279  : i64
    %281 = llvm.extractvalue %269[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %282 = llvm.getelementptr %281[%273] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %280, %282 : !llvm.ptr<i64>
    %283 = llvm.add %273, %272  : i64
    llvm.br ^bb28(%283 : i64)
  ^bb30:  // pred: ^bb28
    %284 = llvm.mlir.constant(2 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    %286 = llvm.mlir.null : !llvm.ptr<i1>
    %287 = llvm.getelementptr %286[%284] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %288 = llvm.ptrtoint %287 : !llvm.ptr<i1> to i64
    %289 = llvm.mlir.constant(16 : index) : i64
    %290 = llvm.add %288, %289  : i64
    %291 = llvm.call @malloc(%290) : (i64) -> !llvm.ptr<i8>
    %292 = llvm.bitcast %291 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %293 = llvm.ptrtoint %292 : !llvm.ptr<i1> to i64
    %294 = llvm.mlir.constant(1 : index) : i64
    %295 = llvm.sub %289, %294  : i64
    %296 = llvm.add %293, %295  : i64
    %297 = llvm.urem %296, %289  : i64
    %298 = llvm.sub %296, %297  : i64
    %299 = llvm.inttoptr %298 : i64 to !llvm.ptr<i1>
    %300 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %301 = llvm.insertvalue %292, %300[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %302 = llvm.insertvalue %299, %301[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %303 = llvm.mlir.constant(0 : index) : i64
    %304 = llvm.insertvalue %303, %302[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %305 = llvm.insertvalue %284, %304[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %306 = llvm.insertvalue %285, %305[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %307 = llvm.mlir.constant(0 : index) : i64
    %308 = llvm.mlir.constant(2 : index) : i64
    %309 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%307 : i64)
  ^bb31(%310: i64):  // 2 preds: ^bb30, ^bb32
    %311 = llvm.icmp "slt" %310, %308 : i64
    llvm.cond_br %311, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %312 = llvm.extractvalue %30[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %313 = llvm.getelementptr %312[%310] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %314 = llvm.load %313 : !llvm.ptr<i64>
    %315 = llvm.extractvalue %269[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %316 = llvm.getelementptr %315[%310] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %317 = llvm.load %316 : !llvm.ptr<i64>
    %318 = llvm.icmp "eq" %314, %317 : i64
    %319 = llvm.extractvalue %306[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %320 = llvm.getelementptr %319[%310] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %318, %320 : !llvm.ptr<i1>
    %321 = llvm.add %310, %309  : i64
    llvm.br ^bb31(%321 : i64)
  ^bb33:  // pred: ^bb31
    %322 = llvm.mlir.constant(2 : index) : i64
    %323 = llvm.mlir.constant(1 : index) : i64
    %324 = llvm.mlir.null : !llvm.ptr<i64>
    %325 = llvm.getelementptr %324[%322] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %326 = llvm.ptrtoint %325 : !llvm.ptr<i64> to i64
    %327 = llvm.mlir.constant(16 : index) : i64
    %328 = llvm.add %326, %327  : i64
    %329 = llvm.call @malloc(%328) : (i64) -> !llvm.ptr<i8>
    %330 = llvm.bitcast %329 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %331 = llvm.ptrtoint %330 : !llvm.ptr<i64> to i64
    %332 = llvm.mlir.constant(1 : index) : i64
    %333 = llvm.sub %327, %332  : i64
    %334 = llvm.add %331, %333  : i64
    %335 = llvm.urem %334, %327  : i64
    %336 = llvm.sub %334, %335  : i64
    %337 = llvm.inttoptr %336 : i64 to !llvm.ptr<i64>
    %338 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %339 = llvm.insertvalue %330, %338[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %340 = llvm.insertvalue %337, %339[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %341 = llvm.mlir.constant(0 : index) : i64
    %342 = llvm.insertvalue %341, %340[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %343 = llvm.insertvalue %322, %342[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %344 = llvm.insertvalue %323, %343[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %345 = llvm.mlir.constant(0 : index) : i64
    %346 = llvm.mlir.constant(2 : index) : i64
    %347 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%345 : i64)
  ^bb34(%348: i64):  // 2 preds: ^bb33, ^bb35
    %349 = llvm.icmp "slt" %348, %346 : i64
    llvm.cond_br %349, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %350 = llvm.extractvalue %306[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %351 = llvm.getelementptr %350[%348] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %352 = llvm.load %351 : !llvm.ptr<i1>
    %353 = llvm.extractvalue %238[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %354 = llvm.getelementptr %353[%348] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %355 = llvm.load %354 : !llvm.ptr<i64>
    %356 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %357 = llvm.getelementptr %356[%348] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %358 = llvm.load %357 : !llvm.ptr<i64>
    %359 = llvm.select %352, %355, %358 : i1, i64
    %360 = llvm.extractvalue %344[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %361 = llvm.getelementptr %360[%348] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %359, %361 : !llvm.ptr<i64>
    %362 = llvm.add %348, %347  : i64
    llvm.br ^bb34(%362 : i64)
  ^bb36:  // pred: ^bb34
    %363 = llvm.extractvalue %344[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %364 = llvm.getelementptr %363[%18] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %365 = llvm.load %364 : !llvm.ptr<i64>
    %366 = llvm.extractvalue %344[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %367 = llvm.getelementptr %366[%19] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %368 = llvm.load %367 : !llvm.ptr<i64>
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.mul %368, %365  : i64
    %371 = llvm.mlir.null : !llvm.ptr<i32>
    %372 = llvm.getelementptr %371[%370] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %373 = llvm.ptrtoint %372 : !llvm.ptr<i32> to i64
    %374 = llvm.mlir.constant(16 : index) : i64
    %375 = llvm.add %373, %374  : i64
    %376 = llvm.call @malloc(%375) : (i64) -> !llvm.ptr<i8>
    %377 = llvm.bitcast %376 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %378 = llvm.ptrtoint %377 : !llvm.ptr<i32> to i64
    %379 = llvm.mlir.constant(1 : index) : i64
    %380 = llvm.sub %374, %379  : i64
    %381 = llvm.add %378, %380  : i64
    %382 = llvm.urem %381, %374  : i64
    %383 = llvm.sub %381, %382  : i64
    %384 = llvm.inttoptr %383 : i64 to !llvm.ptr<i32>
    %385 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %386 = llvm.insertvalue %377, %385[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %387 = llvm.insertvalue %384, %386[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %388 = llvm.mlir.constant(0 : index) : i64
    %389 = llvm.insertvalue %388, %387[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %390 = llvm.insertvalue %365, %389[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %391 = llvm.insertvalue %368, %390[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %392 = llvm.insertvalue %368, %391[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %393 = llvm.insertvalue %369, %392[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %394 = llvm.mlir.constant(0 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%394 : i64)
  ^bb37(%396: i64):  // 2 preds: ^bb36, ^bb41
    %397 = llvm.icmp "slt" %396, %365 : i64
    llvm.cond_br %397, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    %398 = llvm.mlir.constant(0 : index) : i64
    %399 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%398 : i64)
  ^bb39(%400: i64):  // 2 preds: ^bb38, ^bb40
    %401 = llvm.icmp "slt" %400, %368 : i64
    llvm.cond_br %401, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %402 = llvm.extractvalue %15[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %403 = llvm.load %402 : !llvm.ptr<i32>
    %404 = llvm.extractvalue %393[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %405 = llvm.extractvalue %393[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %406 = llvm.mul %396, %405  : i64
    %407 = llvm.add %406, %400  : i64
    %408 = llvm.getelementptr %404[%407] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %403, %408 : !llvm.ptr<i32>
    %409 = llvm.add %400, %399  : i64
    llvm.br ^bb39(%409 : i64)
  ^bb41:  // pred: ^bb39
    %410 = llvm.add %396, %395  : i64
    llvm.br ^bb37(%410 : i64)
  ^bb42:  // pred: ^bb37
    %411 = llvm.mlir.constant(1 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    %413 = llvm.mlir.constant(1 : index) : i64
    %414 = llvm.mlir.null : !llvm.ptr<i32>
    %415 = llvm.getelementptr %414[%411] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %416 = llvm.ptrtoint %415 : !llvm.ptr<i32> to i64
    %417 = llvm.mlir.constant(16 : index) : i64
    %418 = llvm.add %416, %417  : i64
    %419 = llvm.call @malloc(%418) : (i64) -> !llvm.ptr<i8>
    %420 = llvm.bitcast %419 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %421 = llvm.ptrtoint %420 : !llvm.ptr<i32> to i64
    %422 = llvm.mlir.constant(1 : index) : i64
    %423 = llvm.sub %417, %422  : i64
    %424 = llvm.add %421, %423  : i64
    %425 = llvm.urem %424, %417  : i64
    %426 = llvm.sub %424, %425  : i64
    %427 = llvm.inttoptr %426 : i64 to !llvm.ptr<i32>
    %428 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %429 = llvm.insertvalue %420, %428[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %430 = llvm.insertvalue %427, %429[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %431 = llvm.mlir.constant(0 : index) : i64
    %432 = llvm.insertvalue %431, %430[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %433 = llvm.insertvalue %411, %432[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %434 = llvm.insertvalue %412, %433[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %435 = llvm.insertvalue %412, %434[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %436 = llvm.insertvalue %413, %435[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %437 = llvm.mlir.constant(1 : index) : i64
    %438 = llvm.mlir.null : !llvm.ptr<i32>
    %439 = llvm.getelementptr %438[%437] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %440 = llvm.ptrtoint %439 : !llvm.ptr<i32> to i64
    %441 = llvm.alloca %440 x i32 : (i64) -> !llvm.ptr<i32>
    %442 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %443 = llvm.insertvalue %441, %442[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %444 = llvm.insertvalue %441, %443[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %445 = llvm.mlir.constant(0 : index) : i64
    %446 = llvm.insertvalue %445, %444[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %447 = llvm.mlir.constant(0 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    %449 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%447 : i64)
  ^bb43(%450: i64):  // 2 preds: ^bb42, ^bb50
    %451 = llvm.icmp "slt" %450, %448 : i64
    llvm.cond_br %451, ^bb44, ^bb51
  ^bb44:  // pred: ^bb43
    %452 = llvm.mlir.constant(0 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    %454 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%452 : i64)
  ^bb45(%455: i64):  // 2 preds: ^bb44, ^bb49
    %456 = llvm.icmp "slt" %455, %453 : i64
    llvm.cond_br %456, ^bb46, ^bb50
  ^bb46:  // pred: ^bb45
    %457 = llvm.extractvalue %446[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %17, %457 : !llvm.ptr<i32>
    %458 = llvm.mlir.constant(0 : index) : i64
    %459 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%458 : i64)
  ^bb47(%460: i64):  // 2 preds: ^bb46, ^bb48
    %461 = llvm.icmp "slt" %460, %368 : i64
    llvm.cond_br %461, ^bb48, ^bb49
  ^bb48:  // pred: ^bb47
    %462 = llvm.extractvalue %393[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %463 = llvm.extractvalue %393[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %464 = llvm.mul %450, %463  : i64
    %465 = llvm.add %464, %460  : i64
    %466 = llvm.getelementptr %462[%465] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %467 = llvm.load %466 : !llvm.ptr<i32>
    %468 = llvm.extractvalue %393[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %469 = llvm.extractvalue %393[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %470 = llvm.mul %460, %469  : i64
    %471 = llvm.add %470, %455  : i64
    %472 = llvm.getelementptr %468[%471] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %473 = llvm.load %472 : !llvm.ptr<i32>
    %474 = llvm.extractvalue %446[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %475 = llvm.load %474 : !llvm.ptr<i32>
    %476 = llvm.mul %467, %473  : i32
    %477 = llvm.add %475, %476  : i32
    %478 = llvm.extractvalue %446[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %477, %478 : !llvm.ptr<i32>
    %479 = llvm.add %460, %459  : i64
    llvm.br ^bb47(%479 : i64)
  ^bb49:  // pred: ^bb47
    %480 = llvm.extractvalue %446[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %481 = llvm.load %480 : !llvm.ptr<i32>
    %482 = llvm.extractvalue %436[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %483 = llvm.add %450, %455  : i64
    %484 = llvm.getelementptr %482[%483] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %481, %484 : !llvm.ptr<i32>
    %485 = llvm.add %455, %454  : i64
    llvm.br ^bb45(%485 : i64)
  ^bb50:  // pred: ^bb45
    %486 = llvm.add %450, %449  : i64
    llvm.br ^bb43(%486 : i64)
  ^bb51:  // pred: ^bb43
    %487 = llvm.mlir.constant(1 : index) : i64
    %488 = llvm.mlir.constant(2 : index) : i64
    %489 = llvm.mlir.constant(2 : index) : i64
    %490 = llvm.mlir.constant(2 : index) : i64
    %491 = llvm.mlir.constant(1 : index) : i64
    %492 = llvm.mlir.constant(4 : index) : i64
    %493 = llvm.mlir.constant(8 : index) : i64
    %494 = llvm.mlir.constant(8 : index) : i64
    %495 = llvm.mlir.null : !llvm.ptr<i32>
    %496 = llvm.getelementptr %495[%494] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %497 = llvm.ptrtoint %496 : !llvm.ptr<i32> to i64
    %498 = llvm.mlir.constant(16 : index) : i64
    %499 = llvm.add %497, %498  : i64
    %500 = llvm.call @malloc(%499) : (i64) -> !llvm.ptr<i8>
    %501 = llvm.bitcast %500 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %502 = llvm.ptrtoint %501 : !llvm.ptr<i32> to i64
    %503 = llvm.mlir.constant(1 : index) : i64
    %504 = llvm.sub %498, %503  : i64
    %505 = llvm.add %502, %504  : i64
    %506 = llvm.urem %505, %498  : i64
    %507 = llvm.sub %505, %506  : i64
    %508 = llvm.inttoptr %507 : i64 to !llvm.ptr<i32>
    %509 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %510 = llvm.insertvalue %501, %509[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %511 = llvm.insertvalue %508, %510[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %512 = llvm.mlir.constant(0 : index) : i64
    %513 = llvm.insertvalue %512, %511[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %514 = llvm.insertvalue %487, %513[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %515 = llvm.insertvalue %488, %514[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %516 = llvm.insertvalue %489, %515[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %517 = llvm.insertvalue %490, %516[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %518 = llvm.insertvalue %493, %517[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %519 = llvm.insertvalue %492, %518[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %520 = llvm.insertvalue %490, %519[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %521 = llvm.insertvalue %491, %520[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %522 = llvm.mlir.constant(0 : index) : i64
    %523 = llvm.mlir.constant(1 : index) : i64
    %524 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%522 : i64)
  ^bb52(%525: i64):  // 2 preds: ^bb51, ^bb62
    %526 = llvm.icmp "slt" %525, %523 : i64
    llvm.cond_br %526, ^bb53, ^bb63
  ^bb53:  // pred: ^bb52
    %527 = llvm.mlir.constant(0 : index) : i64
    %528 = llvm.mlir.constant(2 : index) : i64
    %529 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%527 : i64)
  ^bb54(%530: i64):  // 2 preds: ^bb53, ^bb61
    %531 = llvm.icmp "slt" %530, %528 : i64
    llvm.cond_br %531, ^bb55, ^bb62
  ^bb55:  // pred: ^bb54
    %532 = llvm.mlir.constant(0 : index) : i64
    %533 = llvm.mlir.constant(2 : index) : i64
    %534 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%532 : i64)
  ^bb56(%535: i64):  // 2 preds: ^bb55, ^bb60
    %536 = llvm.icmp "slt" %535, %533 : i64
    llvm.cond_br %536, ^bb57, ^bb61
  ^bb57:  // pred: ^bb56
    %537 = llvm.mlir.constant(0 : index) : i64
    %538 = llvm.mlir.constant(2 : index) : i64
    %539 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%537 : i64)
  ^bb58(%540: i64):  // 2 preds: ^bb57, ^bb59
    %541 = llvm.icmp "slt" %540, %538 : i64
    llvm.cond_br %541, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %542 = llvm.extractvalue %15[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %543 = llvm.load %542 : !llvm.ptr<i32>
    %544 = llvm.extractvalue %83[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %545 = llvm.mlir.constant(8 : index) : i64
    %546 = llvm.mul %525, %545  : i64
    %547 = llvm.mlir.constant(4 : index) : i64
    %548 = llvm.mul %530, %547  : i64
    %549 = llvm.add %546, %548  : i64
    %550 = llvm.mlir.constant(2 : index) : i64
    %551 = llvm.mul %535, %550  : i64
    %552 = llvm.add %549, %551  : i64
    %553 = llvm.add %552, %540  : i64
    %554 = llvm.getelementptr %544[%553] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %555 = llvm.load %554 : !llvm.ptr<i32>
    %556 = llvm.sub %543, %555  : i32
    %557 = llvm.extractvalue %521[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %558 = llvm.mlir.constant(8 : index) : i64
    %559 = llvm.mul %525, %558  : i64
    %560 = llvm.mlir.constant(4 : index) : i64
    %561 = llvm.mul %530, %560  : i64
    %562 = llvm.add %559, %561  : i64
    %563 = llvm.mlir.constant(2 : index) : i64
    %564 = llvm.mul %535, %563  : i64
    %565 = llvm.add %562, %564  : i64
    %566 = llvm.add %565, %540  : i64
    %567 = llvm.getelementptr %557[%566] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %556, %567 : !llvm.ptr<i32>
    %568 = llvm.add %540, %539  : i64
    llvm.br ^bb58(%568 : i64)
  ^bb60:  // pred: ^bb58
    %569 = llvm.add %535, %534  : i64
    llvm.br ^bb56(%569 : i64)
  ^bb61:  // pred: ^bb56
    %570 = llvm.add %530, %529  : i64
    llvm.br ^bb54(%570 : i64)
  ^bb62:  // pred: ^bb54
    %571 = llvm.add %525, %524  : i64
    llvm.br ^bb52(%571 : i64)
  ^bb63:  // pred: ^bb52
    %572 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %573 = llvm.insertvalue %166, %572[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %574 = llvm.insertvalue %436, %573[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %575 = llvm.insertvalue %521, %574[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %575 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>) attributes {input_names = ["v6_0", "v1_0"], llvm.emit_c_interface, output_names = ["v4_0", "v5_0", "v3_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %16 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %16, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    %45 = llvm.getelementptr %0[%44] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %46 = llvm.load %45 : !llvm.ptr<ptr<i8>>
    %47 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %49 = llvm.call @omTensorGetDataPtr(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %51 = llvm.insertvalue %50, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %52 = llvm.insertvalue %50, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %55 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    llvm.store %54, %47 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>) -> ()
    %57 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %58 = llvm.extractvalue %57[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %59 = llvm.extractvalue %57[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %60 = llvm.extractvalue %57[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %61 = llvm.mlir.constant(3 : i64) : i64
    %62 = llvm.mlir.constant(24 : i64) : i64
    %63 = llvm.call @malloc(%62) : (i64) -> !llvm.ptr<i8>
    %64 = llvm.bitcast %63 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %65 = llvm.mlir.constant(4 : i64) : i64
    %66 = llvm.call @omTensorCreateUntyped(%65) : (i64) -> !llvm.ptr<i8>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %58[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.bitcast %68 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %70 = llvm.extractvalue %58[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.bitcast %70 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%66, %67, %69, %71) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %72 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%66, %72) : (!llvm.ptr<i8>, i64) -> ()
    %73 = llvm.call @omTensorGetShape(%66) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %74 = llvm.call @omTensorGetStrides(%66) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %75 = llvm.mlir.constant(0 : i64) : i64
    %76 = llvm.extractvalue %58[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.getelementptr %73[%75] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %76, %77 : !llvm.ptr<i64>
    %78 = llvm.extractvalue %58[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %74[%75] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.mlir.constant(1 : i64) : i64
    %81 = llvm.extractvalue %58[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %73[%80] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %81, %82 : !llvm.ptr<i64>
    %83 = llvm.extractvalue %58[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.getelementptr %74[%80] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %83, %84 : !llvm.ptr<i64>
    %85 = llvm.mlir.constant(2 : i64) : i64
    %86 = llvm.extractvalue %58[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.getelementptr %73[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %86, %87 : !llvm.ptr<i64>
    %88 = llvm.extractvalue %58[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.getelementptr %74[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %88, %89 : !llvm.ptr<i64>
    %90 = llvm.mlir.constant(3 : i64) : i64
    %91 = llvm.extractvalue %58[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.getelementptr %73[%90] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.extractvalue %58[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.getelementptr %74[%90] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %93, %94 : !llvm.ptr<i64>
    %95 = llvm.mlir.constant(0 : i64) : i64
    %96 = llvm.getelementptr %64[%95] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %66, %96 : !llvm.ptr<ptr<i8>>
    %97 = llvm.mlir.constant(2 : i64) : i64
    %98 = llvm.call @omTensorCreateUntyped(%97) : (i64) -> !llvm.ptr<i8>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.extractvalue %59[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %101 = llvm.bitcast %100 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %102 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %103 = llvm.bitcast %102 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%98, %99, %101, %103) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %104 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%98, %104) : (!llvm.ptr<i8>, i64) -> ()
    %105 = llvm.call @omTensorGetShape(%98) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %106 = llvm.call @omTensorGetStrides(%98) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %107 = llvm.mlir.constant(0 : i64) : i64
    %108 = llvm.extractvalue %59[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %109 = llvm.getelementptr %105[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.extractvalue %59[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %111 = llvm.getelementptr %106[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.mlir.constant(1 : i64) : i64
    %113 = llvm.extractvalue %59[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %114 = llvm.getelementptr %105[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.extractvalue %59[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %116 = llvm.getelementptr %106[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %115, %116 : !llvm.ptr<i64>
    %117 = llvm.mlir.constant(1 : i64) : i64
    %118 = llvm.getelementptr %64[%117] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %98, %118 : !llvm.ptr<ptr<i8>>
    %119 = llvm.mlir.constant(4 : i64) : i64
    %120 = llvm.call @omTensorCreateUntyped(%119) : (i64) -> !llvm.ptr<i8>
    %121 = llvm.mlir.constant(1 : i64) : i64
    %122 = llvm.extractvalue %60[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.bitcast %122 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %124 = llvm.extractvalue %60[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.bitcast %124 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%120, %121, %123, %125) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %126 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%120, %126) : (!llvm.ptr<i8>, i64) -> ()
    %127 = llvm.call @omTensorGetShape(%120) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %128 = llvm.call @omTensorGetStrides(%120) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %129 = llvm.mlir.constant(0 : i64) : i64
    %130 = llvm.extractvalue %60[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.getelementptr %127[%129] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %130, %131 : !llvm.ptr<i64>
    %132 = llvm.extractvalue %60[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.getelementptr %128[%129] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.mlir.constant(1 : i64) : i64
    %135 = llvm.extractvalue %60[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.getelementptr %127[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.extractvalue %60[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %128[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.mlir.constant(2 : i64) : i64
    %140 = llvm.extractvalue %60[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.getelementptr %127[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %140, %141 : !llvm.ptr<i64>
    %142 = llvm.extractvalue %60[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %128[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.mlir.constant(3 : i64) : i64
    %145 = llvm.extractvalue %60[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.getelementptr %127[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.extractvalue %60[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.getelementptr %128[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.mlir.constant(2 : i64) : i64
    %150 = llvm.getelementptr %64[%149] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %120, %150 : !llvm.ptr<ptr<i8>>
    %151 = llvm.call @omTensorListCreate(%64, %61, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %151 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<129 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<129 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<203 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<203 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

