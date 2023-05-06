module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_5(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_4(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v3_0", "v4_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.insertvalue %arg8, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.insertvalue %arg9, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.insertvalue %arg10, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %arg11, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.insertvalue %arg7, %11[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.mlir.constant(3 : index) : i64
    %15 = llvm.mlir.constant(2 : index) : i64
    %16 = llvm.mlir.constant(1 : i64) : i64
    %17 = llvm.mlir.constant(0 : index) : i64
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %20 = llvm.bitcast %19 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %21 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %22 = llvm.insertvalue %20, %21[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %23 = llvm.insertvalue %20, %22[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %24 = llvm.mlir.constant(0 : index) : i64
    %25 = llvm.insertvalue %24, %23[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %26 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %27 = llvm.bitcast %26 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %28 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %29 = llvm.insertvalue %27, %28[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %30 = llvm.insertvalue %27, %29[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %31 = llvm.mlir.constant(0 : index) : i64
    %32 = llvm.insertvalue %31, %30[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %33 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %34 = llvm.bitcast %33 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %35 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %36 = llvm.insertvalue %34, %35[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.insertvalue %34, %36[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.mlir.constant(0 : index) : i64
    %39 = llvm.insertvalue %38, %37[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.mlir.constant(4 : index) : i64
    %41 = llvm.insertvalue %40, %39[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.insertvalue %42, %41[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x i64>>
    %45 = llvm.bitcast %44 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %46 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %47 = llvm.insertvalue %45, %46[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %48 = llvm.insertvalue %45, %47[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.insertvalue %49, %48[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %51 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<4 x i64>>
    %52 = llvm.bitcast %51 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %53 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %54 = llvm.insertvalue %52, %53[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.insertvalue %52, %54[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.mlir.constant(0 : index) : i64
    %57 = llvm.insertvalue %56, %55[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.mlir.constant(4 : index) : i64
    %59 = llvm.insertvalue %58, %57[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.insertvalue %60, %59[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %63 = llvm.extractvalue %13[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %64 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %65 = llvm.insertvalue %63, %62[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.insertvalue %64, %65[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.insertvalue %67, %66[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.insertvalue %69, %68[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.insertvalue %71, %70[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.insertvalue %73, %72[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.insertvalue %75, %74[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.insertvalue %77, %76[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.insertvalue %79, %78[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.insertvalue %81, %80[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.insertvalue %83, %82[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.mlir.null : !llvm.ptr<i32>
    %91 = llvm.getelementptr %90[%85] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %92 = llvm.ptrtoint %91 : !llvm.ptr<i32> to i64
    %93 = llvm.mlir.constant(16 : index) : i64
    %94 = llvm.add %92, %93  : i64
    %95 = llvm.call @malloc(%94) : (i64) -> !llvm.ptr<i8>
    %96 = llvm.bitcast %95 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %97 = llvm.ptrtoint %96 : !llvm.ptr<i32> to i64
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.sub %93, %98  : i64
    %100 = llvm.add %97, %99  : i64
    %101 = llvm.urem %100, %93  : i64
    %102 = llvm.sub %100, %101  : i64
    %103 = llvm.inttoptr %102 : i64 to !llvm.ptr<i32>
    %104 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %105 = llvm.insertvalue %96, %104[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.insertvalue %103, %105[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.mlir.constant(0 : index) : i64
    %108 = llvm.insertvalue %107, %106[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.insertvalue %85, %108[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.insertvalue %86, %109[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.insertvalue %87, %110[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.insertvalue %88, %111[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.insertvalue %86, %112[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.insertvalue %87, %113[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.insertvalue %88, %114[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.insertvalue %89, %115[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.mlir.constant(0 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%117 : i64)
  ^bb1(%120: i64):  // 2 preds: ^bb0, ^bb11
    %121 = llvm.icmp "slt" %120, %118 : i64
    llvm.cond_br %121, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %122 = llvm.mlir.constant(0 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%122 : i64)
  ^bb3(%125: i64):  // 2 preds: ^bb2, ^bb10
    %126 = llvm.icmp "slt" %125, %123 : i64
    llvm.cond_br %126, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %127 = llvm.mlir.constant(0 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%127 : i64)
  ^bb5(%130: i64):  // 2 preds: ^bb4, ^bb9
    %131 = llvm.icmp "slt" %130, %128 : i64
    llvm.cond_br %131, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %132 = llvm.mlir.constant(0 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%132 : i64)
  ^bb7(%135: i64):  // 2 preds: ^bb6, ^bb8
    %136 = llvm.icmp "slt" %135, %133 : i64
    llvm.cond_br %136, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %137 = llvm.extractvalue %84[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.add %120, %125  : i64
    %139 = llvm.add %138, %130  : i64
    %140 = llvm.add %139, %135  : i64
    %141 = llvm.getelementptr %137[%140] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %142 = llvm.load %141 : !llvm.ptr<i32>
    %143 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %144 = llvm.load %143 : !llvm.ptr<i32>
    %145 = llvm.icmp "slt" %142, %144 : i32
    %146 = llvm.select %145, %144, %142 : i1, i32
    %147 = llvm.extractvalue %32[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %148 = llvm.load %147 : !llvm.ptr<i32>
    %149 = llvm.icmp "slt" %146, %148 : i32
    %150 = llvm.select %149, %146, %148 : i1, i32
    %151 = llvm.extractvalue %116[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.add %120, %125  : i64
    %153 = llvm.add %152, %130  : i64
    %154 = llvm.add %153, %135  : i64
    %155 = llvm.getelementptr %151[%154] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %150, %155 : !llvm.ptr<i32>
    %156 = llvm.add %135, %134  : i64
    llvm.br ^bb7(%156 : i64)
  ^bb9:  // pred: ^bb7
    %157 = llvm.add %130, %129  : i64
    llvm.br ^bb5(%157 : i64)
  ^bb10:  // pred: ^bb5
    %158 = llvm.add %125, %124  : i64
    llvm.br ^bb3(%158 : i64)
  ^bb11:  // pred: ^bb3
    %159 = llvm.add %120, %119  : i64
    llvm.br ^bb1(%159 : i64)
  ^bb12:  // pred: ^bb1
    %160 = llvm.mlir.constant(4 : index) : i64
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.mlir.null : !llvm.ptr<i64>
    %163 = llvm.getelementptr %162[%160] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %164 = llvm.ptrtoint %163 : !llvm.ptr<i64> to i64
    %165 = llvm.mlir.constant(16 : index) : i64
    %166 = llvm.add %164, %165  : i64
    %167 = llvm.call @malloc(%166) : (i64) -> !llvm.ptr<i8>
    %168 = llvm.bitcast %167 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %169 = llvm.ptrtoint %168 : !llvm.ptr<i64> to i64
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.sub %165, %170  : i64
    %172 = llvm.add %169, %171  : i64
    %173 = llvm.urem %172, %165  : i64
    %174 = llvm.sub %172, %173  : i64
    %175 = llvm.inttoptr %174 : i64 to !llvm.ptr<i64>
    %176 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %177 = llvm.insertvalue %168, %176[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %178 = llvm.insertvalue %175, %177[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %179 = llvm.mlir.constant(0 : index) : i64
    %180 = llvm.insertvalue %179, %178[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %181 = llvm.insertvalue %160, %180[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %182 = llvm.insertvalue %161, %181[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %183 = llvm.mlir.constant(0 : index) : i64
    %184 = llvm.mlir.constant(4 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%183 : i64)
  ^bb13(%186: i64):  // 2 preds: ^bb12, ^bb14
    %187 = llvm.icmp "slt" %186, %184 : i64
    llvm.cond_br %187, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %188 = llvm.extractvalue %182[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %189 = llvm.getelementptr %188[%186] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %16, %189 : !llvm.ptr<i64>
    %190 = llvm.add %186, %185  : i64
    llvm.br ^bb13(%190 : i64)
  ^bb15:  // pred: ^bb13
    %191 = llvm.mlir.constant(4 : index) : i64
    %192 = llvm.mlir.constant(1 : index) : i64
    %193 = llvm.mlir.null : !llvm.ptr<i64>
    %194 = llvm.getelementptr %193[%191] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %195 = llvm.ptrtoint %194 : !llvm.ptr<i64> to i64
    %196 = llvm.mlir.constant(16 : index) : i64
    %197 = llvm.add %195, %196  : i64
    %198 = llvm.call @malloc(%197) : (i64) -> !llvm.ptr<i8>
    %199 = llvm.bitcast %198 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %200 = llvm.ptrtoint %199 : !llvm.ptr<i64> to i64
    %201 = llvm.mlir.constant(1 : index) : i64
    %202 = llvm.sub %196, %201  : i64
    %203 = llvm.add %200, %202  : i64
    %204 = llvm.urem %203, %196  : i64
    %205 = llvm.sub %203, %204  : i64
    %206 = llvm.inttoptr %205 : i64 to !llvm.ptr<i64>
    %207 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %208 = llvm.insertvalue %199, %207[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %209 = llvm.insertvalue %206, %208[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %210 = llvm.mlir.constant(0 : index) : i64
    %211 = llvm.insertvalue %210, %209[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %212 = llvm.insertvalue %191, %211[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %213 = llvm.insertvalue %192, %212[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %214 = llvm.mlir.constant(0 : index) : i64
    %215 = llvm.mlir.constant(4 : index) : i64
    %216 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%214 : i64)
  ^bb16(%217: i64):  // 2 preds: ^bb15, ^bb17
    %218 = llvm.icmp "slt" %217, %215 : i64
    llvm.cond_br %218, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %219 = llvm.extractvalue %182[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %220 = llvm.getelementptr %219[%217] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %221 = llvm.load %220 : !llvm.ptr<i64>
    %222 = llvm.extractvalue %50[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %223 = llvm.load %222 : !llvm.ptr<i64>
    %224 = llvm.mul %221, %223  : i64
    %225 = llvm.extractvalue %213[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %226 = llvm.getelementptr %225[%217] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %224, %226 : !llvm.ptr<i64>
    %227 = llvm.add %217, %216  : i64
    llvm.br ^bb16(%227 : i64)
  ^bb18:  // pred: ^bb16
    %228 = llvm.mlir.constant(4 : index) : i64
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.mlir.null : !llvm.ptr<i1>
    %231 = llvm.getelementptr %230[%228] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %232 = llvm.ptrtoint %231 : !llvm.ptr<i1> to i64
    %233 = llvm.mlir.constant(16 : index) : i64
    %234 = llvm.add %232, %233  : i64
    %235 = llvm.call @malloc(%234) : (i64) -> !llvm.ptr<i8>
    %236 = llvm.bitcast %235 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %237 = llvm.ptrtoint %236 : !llvm.ptr<i1> to i64
    %238 = llvm.mlir.constant(1 : index) : i64
    %239 = llvm.sub %233, %238  : i64
    %240 = llvm.add %237, %239  : i64
    %241 = llvm.urem %240, %233  : i64
    %242 = llvm.sub %240, %241  : i64
    %243 = llvm.inttoptr %242 : i64 to !llvm.ptr<i1>
    %244 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %245 = llvm.insertvalue %236, %244[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %246 = llvm.insertvalue %243, %245[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %247 = llvm.mlir.constant(0 : index) : i64
    %248 = llvm.insertvalue %247, %246[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %249 = llvm.insertvalue %228, %248[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %250 = llvm.insertvalue %229, %249[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %251 = llvm.mlir.constant(0 : index) : i64
    %252 = llvm.mlir.constant(4 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%251 : i64)
  ^bb19(%254: i64):  // 2 preds: ^bb18, ^bb20
    %255 = llvm.icmp "slt" %254, %252 : i64
    llvm.cond_br %255, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %256 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %257 = llvm.getelementptr %256[%254] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %258 = llvm.load %257 : !llvm.ptr<i64>
    %259 = llvm.extractvalue %213[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %260 = llvm.getelementptr %259[%254] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %261 = llvm.load %260 : !llvm.ptr<i64>
    %262 = llvm.icmp "eq" %258, %261 : i64
    %263 = llvm.extractvalue %250[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %264 = llvm.getelementptr %263[%254] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %262, %264 : !llvm.ptr<i1>
    %265 = llvm.add %254, %253  : i64
    llvm.br ^bb19(%265 : i64)
  ^bb21:  // pred: ^bb19
    %266 = llvm.mlir.constant(4 : index) : i64
    %267 = llvm.mlir.constant(1 : index) : i64
    %268 = llvm.mlir.null : !llvm.ptr<i64>
    %269 = llvm.getelementptr %268[%266] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %270 = llvm.ptrtoint %269 : !llvm.ptr<i64> to i64
    %271 = llvm.mlir.constant(16 : index) : i64
    %272 = llvm.add %270, %271  : i64
    %273 = llvm.call @malloc(%272) : (i64) -> !llvm.ptr<i8>
    %274 = llvm.bitcast %273 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %275 = llvm.ptrtoint %274 : !llvm.ptr<i64> to i64
    %276 = llvm.mlir.constant(1 : index) : i64
    %277 = llvm.sub %271, %276  : i64
    %278 = llvm.add %275, %277  : i64
    %279 = llvm.urem %278, %271  : i64
    %280 = llvm.sub %278, %279  : i64
    %281 = llvm.inttoptr %280 : i64 to !llvm.ptr<i64>
    %282 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %283 = llvm.insertvalue %274, %282[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %284 = llvm.insertvalue %281, %283[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %285 = llvm.mlir.constant(0 : index) : i64
    %286 = llvm.insertvalue %285, %284[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %287 = llvm.insertvalue %266, %286[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %288 = llvm.insertvalue %267, %287[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %289 = llvm.mlir.constant(0 : index) : i64
    %290 = llvm.mlir.constant(4 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%289 : i64)
  ^bb22(%292: i64):  // 2 preds: ^bb21, ^bb23
    %293 = llvm.icmp "slt" %292, %290 : i64
    llvm.cond_br %293, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %294 = llvm.extractvalue %250[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %295 = llvm.getelementptr %294[%292] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %296 = llvm.load %295 : !llvm.ptr<i1>
    %297 = llvm.extractvalue %182[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %298 = llvm.getelementptr %297[%292] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %299 = llvm.load %298 : !llvm.ptr<i64>
    %300 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %301 = llvm.getelementptr %300[%292] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %302 = llvm.load %301 : !llvm.ptr<i64>
    %303 = llvm.select %296, %299, %302 : i1, i64
    %304 = llvm.extractvalue %288[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %305 = llvm.getelementptr %304[%292] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %303, %305 : !llvm.ptr<i64>
    %306 = llvm.add %292, %291  : i64
    llvm.br ^bb22(%306 : i64)
  ^bb24:  // pred: ^bb22
    %307 = llvm.extractvalue %288[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %308 = llvm.getelementptr %307[%17] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %309 = llvm.load %308 : !llvm.ptr<i64>
    %310 = llvm.extractvalue %288[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %311 = llvm.getelementptr %310[%18] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %312 = llvm.load %311 : !llvm.ptr<i64>
    %313 = llvm.extractvalue %288[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %314 = llvm.getelementptr %313[%15] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %315 = llvm.load %314 : !llvm.ptr<i64>
    %316 = llvm.extractvalue %288[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %317 = llvm.getelementptr %316[%14] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %318 = llvm.load %317 : !llvm.ptr<i64>
    %319 = llvm.mlir.constant(1 : index) : i64
    %320 = llvm.mul %318, %315  : i64
    %321 = llvm.mul %320, %312  : i64
    %322 = llvm.mul %321, %309  : i64
    %323 = llvm.mlir.null : !llvm.ptr<i32>
    %324 = llvm.getelementptr %323[%322] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %325 = llvm.ptrtoint %324 : !llvm.ptr<i32> to i64
    %326 = llvm.mlir.constant(16 : index) : i64
    %327 = llvm.add %325, %326  : i64
    %328 = llvm.call @malloc(%327) : (i64) -> !llvm.ptr<i8>
    %329 = llvm.bitcast %328 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %330 = llvm.ptrtoint %329 : !llvm.ptr<i32> to i64
    %331 = llvm.mlir.constant(1 : index) : i64
    %332 = llvm.sub %326, %331  : i64
    %333 = llvm.add %330, %332  : i64
    %334 = llvm.urem %333, %326  : i64
    %335 = llvm.sub %333, %334  : i64
    %336 = llvm.inttoptr %335 : i64 to !llvm.ptr<i32>
    %337 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %338 = llvm.insertvalue %329, %337[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %339 = llvm.insertvalue %336, %338[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %340 = llvm.mlir.constant(0 : index) : i64
    %341 = llvm.insertvalue %340, %339[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %342 = llvm.insertvalue %309, %341[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %343 = llvm.insertvalue %312, %342[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %344 = llvm.insertvalue %315, %343[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %345 = llvm.insertvalue %318, %344[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %346 = llvm.insertvalue %321, %345[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %347 = llvm.insertvalue %320, %346[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %348 = llvm.insertvalue %318, %347[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %349 = llvm.insertvalue %319, %348[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %350 = llvm.mlir.constant(0 : index) : i64
    %351 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%350 : i64)
  ^bb25(%352: i64):  // 2 preds: ^bb24, ^bb35
    %353 = llvm.icmp "slt" %352, %309 : i64
    llvm.cond_br %353, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %354 = llvm.mlir.constant(0 : index) : i64
    %355 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%354 : i64)
  ^bb27(%356: i64):  // 2 preds: ^bb26, ^bb34
    %357 = llvm.icmp "slt" %356, %312 : i64
    llvm.cond_br %357, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %358 = llvm.mlir.constant(0 : index) : i64
    %359 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%358 : i64)
  ^bb29(%360: i64):  // 2 preds: ^bb28, ^bb33
    %361 = llvm.icmp "slt" %360, %315 : i64
    llvm.cond_br %361, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %362 = llvm.mlir.constant(0 : index) : i64
    %363 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%362 : i64)
  ^bb31(%364: i64):  // 2 preds: ^bb30, ^bb32
    %365 = llvm.icmp "slt" %364, %318 : i64
    llvm.cond_br %365, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %366 = llvm.extractvalue %84[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %367 = llvm.add %17, %17  : i64
    %368 = llvm.add %367, %17  : i64
    %369 = llvm.add %368, %17  : i64
    %370 = llvm.getelementptr %366[%369] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %371 = llvm.load %370 : !llvm.ptr<i32>
    %372 = llvm.extractvalue %349[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %373 = llvm.extractvalue %349[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %374 = llvm.mul %352, %373  : i64
    %375 = llvm.extractvalue %349[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %376 = llvm.mul %356, %375  : i64
    %377 = llvm.add %374, %376  : i64
    %378 = llvm.extractvalue %349[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.mul %360, %378  : i64
    %380 = llvm.add %377, %379  : i64
    %381 = llvm.add %380, %364  : i64
    %382 = llvm.getelementptr %372[%381] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %371, %382 : !llvm.ptr<i32>
    %383 = llvm.add %364, %363  : i64
    llvm.br ^bb31(%383 : i64)
  ^bb33:  // pred: ^bb31
    %384 = llvm.add %360, %359  : i64
    llvm.br ^bb29(%384 : i64)
  ^bb34:  // pred: ^bb29
    %385 = llvm.add %356, %355  : i64
    llvm.br ^bb27(%385 : i64)
  ^bb35:  // pred: ^bb27
    %386 = llvm.add %352, %351  : i64
    llvm.br ^bb25(%386 : i64)
  ^bb36:  // pred: ^bb25
    %387 = llvm.mlir.constant(1 : index) : i64
    %388 = llvm.mul %318, %315  : i64
    %389 = llvm.mul %388, %312  : i64
    %390 = llvm.mul %389, %309  : i64
    %391 = llvm.mlir.null : !llvm.ptr<i1>
    %392 = llvm.getelementptr %391[%390] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %393 = llvm.ptrtoint %392 : !llvm.ptr<i1> to i64
    %394 = llvm.mlir.constant(16 : index) : i64
    %395 = llvm.add %393, %394  : i64
    %396 = llvm.call @malloc(%395) : (i64) -> !llvm.ptr<i8>
    %397 = llvm.bitcast %396 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %398 = llvm.ptrtoint %397 : !llvm.ptr<i1> to i64
    %399 = llvm.mlir.constant(1 : index) : i64
    %400 = llvm.sub %394, %399  : i64
    %401 = llvm.add %398, %400  : i64
    %402 = llvm.urem %401, %394  : i64
    %403 = llvm.sub %401, %402  : i64
    %404 = llvm.inttoptr %403 : i64 to !llvm.ptr<i1>
    %405 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %406 = llvm.insertvalue %397, %405[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %407 = llvm.insertvalue %404, %406[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.mlir.constant(0 : index) : i64
    %409 = llvm.insertvalue %408, %407[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %410 = llvm.insertvalue %309, %409[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %411 = llvm.insertvalue %312, %410[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %412 = llvm.insertvalue %315, %411[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %413 = llvm.insertvalue %318, %412[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %414 = llvm.insertvalue %389, %413[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %415 = llvm.insertvalue %388, %414[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %416 = llvm.insertvalue %318, %415[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %417 = llvm.insertvalue %387, %416[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %418 = llvm.icmp "sgt" %309, %18 : i64
    %419 = llvm.icmp "sgt" %312, %18 : i64
    %420 = llvm.icmp "sgt" %315, %18 : i64
    %421 = llvm.icmp "sgt" %318, %18 : i64
    %422 = llvm.icmp "sgt" %309, %18 : i64
    %423 = llvm.icmp "sgt" %312, %18 : i64
    %424 = llvm.icmp "sgt" %315, %18 : i64
    %425 = llvm.icmp "sgt" %318, %18 : i64
    %426 = llvm.mlir.constant(0 : index) : i64
    %427 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%426 : i64)
  ^bb37(%428: i64):  // 2 preds: ^bb36, ^bb47
    %429 = llvm.icmp "slt" %428, %309 : i64
    llvm.cond_br %429, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %430 = llvm.mlir.constant(0 : index) : i64
    %431 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%430 : i64)
  ^bb39(%432: i64):  // 2 preds: ^bb38, ^bb46
    %433 = llvm.icmp "slt" %432, %312 : i64
    llvm.cond_br %433, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %434 = llvm.mlir.constant(0 : index) : i64
    %435 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%434 : i64)
  ^bb41(%436: i64):  // 2 preds: ^bb40, ^bb45
    %437 = llvm.icmp "slt" %436, %315 : i64
    llvm.cond_br %437, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %438 = llvm.mlir.constant(0 : index) : i64
    %439 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%438 : i64)
  ^bb43(%440: i64):  // 2 preds: ^bb42, ^bb44
    %441 = llvm.icmp "slt" %440, %318 : i64
    llvm.cond_br %441, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %442 = llvm.select %418, %428, %17 : i1, i64
    %443 = llvm.select %419, %432, %17 : i1, i64
    %444 = llvm.select %420, %436, %17 : i1, i64
    %445 = llvm.select %421, %440, %17 : i1, i64
    %446 = llvm.extractvalue %349[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %447 = llvm.extractvalue %349[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %448 = llvm.mul %442, %447  : i64
    %449 = llvm.extractvalue %349[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %450 = llvm.mul %443, %449  : i64
    %451 = llvm.add %448, %450  : i64
    %452 = llvm.extractvalue %349[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %453 = llvm.mul %444, %452  : i64
    %454 = llvm.add %451, %453  : i64
    %455 = llvm.add %454, %445  : i64
    %456 = llvm.getelementptr %446[%455] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %457 = llvm.load %456 : !llvm.ptr<i32>
    %458 = llvm.select %422, %428, %17 : i1, i64
    %459 = llvm.select %423, %432, %17 : i1, i64
    %460 = llvm.select %424, %436, %17 : i1, i64
    %461 = llvm.select %425, %440, %17 : i1, i64
    %462 = llvm.extractvalue %349[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %463 = llvm.extractvalue %349[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %464 = llvm.mul %458, %463  : i64
    %465 = llvm.extractvalue %349[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %466 = llvm.mul %459, %465  : i64
    %467 = llvm.add %464, %466  : i64
    %468 = llvm.extractvalue %349[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.mul %460, %468  : i64
    %470 = llvm.add %467, %469  : i64
    %471 = llvm.add %470, %461  : i64
    %472 = llvm.getelementptr %462[%471] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %473 = llvm.load %472 : !llvm.ptr<i32>
    %474 = llvm.icmp "sgt" %457, %473 : i32
    %475 = llvm.extractvalue %417[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.extractvalue %417[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.mul %428, %476  : i64
    %478 = llvm.extractvalue %417[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %479 = llvm.mul %432, %478  : i64
    %480 = llvm.add %477, %479  : i64
    %481 = llvm.extractvalue %417[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %482 = llvm.mul %436, %481  : i64
    %483 = llvm.add %480, %482  : i64
    %484 = llvm.add %483, %440  : i64
    %485 = llvm.getelementptr %475[%484] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %474, %485 : !llvm.ptr<i1>
    %486 = llvm.add %440, %439  : i64
    llvm.br ^bb43(%486 : i64)
  ^bb45:  // pred: ^bb43
    %487 = llvm.add %436, %435  : i64
    llvm.br ^bb41(%487 : i64)
  ^bb46:  // pred: ^bb41
    %488 = llvm.add %432, %431  : i64
    llvm.br ^bb39(%488 : i64)
  ^bb47:  // pred: ^bb39
    %489 = llvm.add %428, %427  : i64
    llvm.br ^bb37(%489 : i64)
  ^bb48:  // pred: ^bb37
    %490 = llvm.mlir.constant(1 : index) : i64
    %491 = llvm.mlir.constant(1 : index) : i64
    %492 = llvm.mlir.constant(1 : index) : i64
    %493 = llvm.mlir.constant(1 : index) : i64
    %494 = llvm.mlir.constant(1 : index) : i64
    %495 = llvm.mlir.null : !llvm.ptr<i1>
    %496 = llvm.getelementptr %495[%490] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %497 = llvm.ptrtoint %496 : !llvm.ptr<i1> to i64
    %498 = llvm.mlir.constant(16 : index) : i64
    %499 = llvm.add %497, %498  : i64
    %500 = llvm.call @malloc(%499) : (i64) -> !llvm.ptr<i8>
    %501 = llvm.bitcast %500 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %502 = llvm.ptrtoint %501 : !llvm.ptr<i1> to i64
    %503 = llvm.mlir.constant(1 : index) : i64
    %504 = llvm.sub %498, %503  : i64
    %505 = llvm.add %502, %504  : i64
    %506 = llvm.urem %505, %498  : i64
    %507 = llvm.sub %505, %506  : i64
    %508 = llvm.inttoptr %507 : i64 to !llvm.ptr<i1>
    %509 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %510 = llvm.insertvalue %501, %509[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %511 = llvm.insertvalue %508, %510[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %512 = llvm.mlir.constant(0 : index) : i64
    %513 = llvm.insertvalue %512, %511[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %514 = llvm.insertvalue %490, %513[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %515 = llvm.insertvalue %491, %514[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %516 = llvm.insertvalue %492, %515[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %517 = llvm.insertvalue %493, %516[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %518 = llvm.insertvalue %491, %517[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %519 = llvm.insertvalue %492, %518[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %520 = llvm.insertvalue %493, %519[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %521 = llvm.insertvalue %494, %520[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %522 = llvm.icmp "sgt" %309, %18 : i64
    %523 = llvm.icmp "sgt" %312, %18 : i64
    %524 = llvm.icmp "sgt" %315, %18 : i64
    %525 = llvm.icmp "sgt" %318, %18 : i64
    %526 = llvm.icmp "sgt" %309, %18 : i64
    %527 = llvm.icmp "sgt" %312, %18 : i64
    %528 = llvm.icmp "sgt" %315, %18 : i64
    %529 = llvm.icmp "sgt" %318, %18 : i64
    %530 = llvm.mlir.constant(0 : index) : i64
    %531 = llvm.mlir.constant(1 : index) : i64
    %532 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%530 : i64)
  ^bb49(%533: i64):  // 2 preds: ^bb48, ^bb59
    %534 = llvm.icmp "slt" %533, %531 : i64
    llvm.cond_br %534, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %535 = llvm.mlir.constant(0 : index) : i64
    %536 = llvm.mlir.constant(1 : index) : i64
    %537 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%535 : i64)
  ^bb51(%538: i64):  // 2 preds: ^bb50, ^bb58
    %539 = llvm.icmp "slt" %538, %536 : i64
    llvm.cond_br %539, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %540 = llvm.mlir.constant(0 : index) : i64
    %541 = llvm.mlir.constant(1 : index) : i64
    %542 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%540 : i64)
  ^bb53(%543: i64):  // 2 preds: ^bb52, ^bb57
    %544 = llvm.icmp "slt" %543, %541 : i64
    llvm.cond_br %544, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %545 = llvm.mlir.constant(0 : index) : i64
    %546 = llvm.mlir.constant(1 : index) : i64
    %547 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%545 : i64)
  ^bb55(%548: i64):  // 2 preds: ^bb54, ^bb56
    %549 = llvm.icmp "slt" %548, %546 : i64
    llvm.cond_br %549, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %550 = llvm.select %522, %533, %17 : i1, i64
    %551 = llvm.select %523, %538, %17 : i1, i64
    %552 = llvm.select %524, %543, %17 : i1, i64
    %553 = llvm.select %525, %548, %17 : i1, i64
    %554 = llvm.extractvalue %417[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %555 = llvm.extractvalue %417[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %556 = llvm.mul %550, %555  : i64
    %557 = llvm.extractvalue %417[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %558 = llvm.mul %551, %557  : i64
    %559 = llvm.add %556, %558  : i64
    %560 = llvm.extractvalue %417[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %561 = llvm.mul %552, %560  : i64
    %562 = llvm.add %559, %561  : i64
    %563 = llvm.add %562, %553  : i64
    %564 = llvm.getelementptr %554[%563] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %565 = llvm.load %564 : !llvm.ptr<i1>
    %566 = llvm.select %526, %533, %17 : i1, i64
    %567 = llvm.select %527, %538, %17 : i1, i64
    %568 = llvm.select %528, %543, %17 : i1, i64
    %569 = llvm.select %529, %548, %17 : i1, i64
    %570 = llvm.extractvalue %417[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %571 = llvm.extractvalue %417[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %572 = llvm.mul %566, %571  : i64
    %573 = llvm.extractvalue %417[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %574 = llvm.mul %567, %573  : i64
    %575 = llvm.add %572, %574  : i64
    %576 = llvm.extractvalue %417[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %577 = llvm.mul %568, %576  : i64
    %578 = llvm.add %575, %577  : i64
    %579 = llvm.add %578, %569  : i64
    %580 = llvm.getelementptr %570[%579] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %581 = llvm.load %580 : !llvm.ptr<i1>
    %582 = llvm.or %565, %581  : i1
    %583 = llvm.extractvalue %521[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %584 = llvm.add %533, %538  : i64
    %585 = llvm.add %584, %543  : i64
    %586 = llvm.add %585, %548  : i64
    %587 = llvm.getelementptr %583[%586] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %582, %587 : !llvm.ptr<i1>
    %588 = llvm.add %548, %547  : i64
    llvm.br ^bb55(%588 : i64)
  ^bb57:  // pred: ^bb55
    %589 = llvm.add %543, %542  : i64
    llvm.br ^bb53(%589 : i64)
  ^bb58:  // pred: ^bb53
    %590 = llvm.add %538, %537  : i64
    llvm.br ^bb51(%590 : i64)
  ^bb59:  // pred: ^bb51
    %591 = llvm.add %533, %532  : i64
    llvm.br ^bb49(%591 : i64)
  ^bb60:  // pred: ^bb49
    %592 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %593 = llvm.insertvalue %116, %592[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %594 = llvm.insertvalue %521, %593[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %594 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v3_0", "v4_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.extractvalue %0[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.extractvalue %0[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %14, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %44 = llvm.mlir.constant(4 : i64) : i64
    %45 = llvm.getelementptr %14[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %46 = llvm.load %45 : !llvm.ptr<i64>
    %47 = llvm.insertvalue %46, %43[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %48 = llvm.getelementptr %15[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %49 = llvm.load %48 : !llvm.ptr<i64>
    %50 = llvm.insertvalue %49, %47[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    llvm.store %50, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) -> ()
    %51 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %52 = llvm.extractvalue %51[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %53 = llvm.extractvalue %51[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %54 = llvm.mlir.constant(2 : i64) : i64
    %55 = llvm.mlir.constant(16 : i64) : i64
    %56 = llvm.call @malloc(%55) : (i64) -> !llvm.ptr<i8>
    %57 = llvm.bitcast %56 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %58 = llvm.mlir.constant(4 : i64) : i64
    %59 = llvm.call @omTensorCreateUntyped(%58) : (i64) -> !llvm.ptr<i8>
    %60 = llvm.mlir.constant(1 : i64) : i64
    %61 = llvm.extractvalue %52[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.bitcast %61 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %63 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.bitcast %63 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%59, %60, %62, %64) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %65 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%59, %65) : (!llvm.ptr<i8>, i64) -> ()
    %66 = llvm.call @omTensorGetShape(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %67 = llvm.call @omTensorGetStrides(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %68 = llvm.mlir.constant(0 : i64) : i64
    %69 = llvm.extractvalue %52[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %66[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.extractvalue %52[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.getelementptr %67[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %71, %72 : !llvm.ptr<i64>
    %73 = llvm.mlir.constant(1 : i64) : i64
    %74 = llvm.extractvalue %52[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %66[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.extractvalue %52[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.getelementptr %67[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %76, %77 : !llvm.ptr<i64>
    %78 = llvm.mlir.constant(2 : i64) : i64
    %79 = llvm.extractvalue %52[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %66[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.extractvalue %52[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %67[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %81, %82 : !llvm.ptr<i64>
    %83 = llvm.mlir.constant(3 : i64) : i64
    %84 = llvm.extractvalue %52[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.getelementptr %66[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.extractvalue %52[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.getelementptr %67[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %86, %87 : !llvm.ptr<i64>
    %88 = llvm.mlir.constant(0 : i64) : i64
    %89 = llvm.getelementptr %57[%88] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %59, %89 : !llvm.ptr<ptr<i8>>
    %90 = llvm.mlir.constant(4 : i64) : i64
    %91 = llvm.call @omTensorCreateUntyped(%90) : (i64) -> !llvm.ptr<i8>
    %92 = llvm.mlir.constant(1 : i64) : i64
    %93 = llvm.extractvalue %53[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.bitcast %93 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %95 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.bitcast %95 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%91, %92, %94, %96) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %97 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%91, %97) : (!llvm.ptr<i8>, i64) -> ()
    %98 = llvm.call @omTensorGetShape(%91) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %99 = llvm.call @omTensorGetStrides(%91) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %100 = llvm.mlir.constant(0 : i64) : i64
    %101 = llvm.extractvalue %53[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %98[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.extractvalue %53[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.getelementptr %99[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.mlir.constant(1 : i64) : i64
    %106 = llvm.extractvalue %53[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %98[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.extractvalue %53[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %99[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.mlir.constant(2 : i64) : i64
    %111 = llvm.extractvalue %53[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %98[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.extractvalue %53[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %99[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.mlir.constant(3 : i64) : i64
    %116 = llvm.extractvalue %53[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.getelementptr %98[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.extractvalue %53[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.getelementptr %99[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.mlir.constant(1 : i64) : i64
    %121 = llvm.getelementptr %57[%120] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %91, %121 : !llvm.ptr<ptr<i8>>
    %122 = llvm.call @omTensorListCreate(%57, %54, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %122 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<76 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<76 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<140 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<140 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

